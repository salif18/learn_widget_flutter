import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

enum Langues { francais, anglais, arabe, chine }

class _SettingsPageState extends State<SettingsPage> {

  
  Langues selectValue = Langues.francais;

  void selectRadio(value) {
    setState(() => selectValue = value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              SizedBox(
                height: 100,
                child: Row(children: [
                  IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.arrow_back_ios_new, size: 30)),
                  Text('Choisir un langage',
                      style: GoogleFonts.roboto(fontSize: 20))
                ]),
              ),
              RadioListTile(
                  activeColor: Colors.green,
                  title: Text("Anglais", style:GoogleFonts.roboto(fontSize:20 ,fontWeight: FontWeight.w500 )),
                  value: Langues.anglais,
                  groupValue: selectValue,
                  onChanged: (value) => selectRadio(value)),
              RadioListTile(
                  activeColor: Colors.green,
                  title: Text("Arabe",style:GoogleFonts.roboto(fontSize:20 ,fontWeight: FontWeight.w500)),
                  value: Langues.arabe,
                  groupValue: selectValue,
                  onChanged: (value) => selectRadio(value)),
              RadioListTile(
                  activeColor: Colors.green,
                  title: Text("Francais",style:GoogleFonts.roboto(fontSize:20 ,fontWeight: FontWeight.w500)),
                  value: Langues.francais,
                  groupValue: selectValue,
                  onChanged: (value) => selectRadio(value)),
              RadioListTile(
                  activeColor: Colors.green,
                  title: Text("Chine", style:GoogleFonts.roboto(fontSize:20 ,fontWeight: FontWeight.w500)),
                  value: Langues.chine,
                  groupValue: selectValue,
                  onChanged: (value) => selectRadio(value))
            ],
          ),
        ),
      ),
    );
  }
}
