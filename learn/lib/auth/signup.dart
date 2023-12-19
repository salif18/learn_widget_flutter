import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupWidget extends StatefulWidget {
  const SignupWidget(
      {super.key});

  @override
  State<SignupWidget> createState() => _SignupWidgetState();
}

class _SignupWidgetState extends State<SignupWidget> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _pseudoController = TextEditingController();
  final TextEditingController _numeroController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  _senData() {
    if (_formkey.currentState!.validate()) {
      final pseudo = _pseudoController.text;
      final numero = _numeroController;
      final email = _emailController.text;
      final password = _passwordController.text;
      CollectionReference eventsRef =
       FirebaseFirestore.instance.collection("users");
       eventsRef.add({
        "pseudo":pseudo,
        "numero":numero,
        "email":email, 
        "password":password
       });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Form(
        key: _formkey,
        child: Column(children: [
          Container(height: 90),
          TextFormField(
            controller: _pseudoController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Veuillez remplir ce champs";
              }
            },
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              labelText: "Pseudo",
              labelStyle:
                  GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.w500),
              hintText: "Entrez un pseudo",
              hintStyle: GoogleFonts.roboto(fontSize: 16),
              prefixIcon: const Icon(Icons.person_2_outlined, size: 25),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(width: 1.5),
              ),
            ),
          ),
          const SizedBox(height: 20),
          TextFormField(
            keyboardType:TextInputType.number,
            controller: _numeroController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Veuillez remplir ce champs";
              }
            },
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              labelText: "Numero",
              labelStyle:
                  GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.w500),
              hintText: "Entrez un numero",
              hintStyle: GoogleFonts.roboto(fontSize: 16),
              prefixIcon: const Icon(Icons.phone, size: 25),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(width: 1.5),
              ),
            ),
          ),
          const SizedBox(height: 20),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            controller: _emailController,
            validator: (value) {
              if (value == null || value.isEmpty && !value.contains("@")) {
                return "Veuillez remplir ce champs";
              }
            },
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              labelText: "Email",
              labelStyle:
                  GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.w500),
              hintText: "Entrez un email",
              hintStyle: GoogleFonts.roboto(fontSize: 16),
              prefixIcon: const Icon(Icons.email_outlined, size: 25),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(width: 1.5),
              ),
            ),
          ),
          const SizedBox(height: 20),
          TextFormField(
            keyboardType:TextInputType.visiblePassword,
            controller: _passwordController,
            validator: (value) {
              if (value == null || value.isEmpty || value.length < 6) {
                return "Veuillez remplir ce champs";
              }
            },
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              labelText: "Password",
              labelStyle:
                  GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.w500),
              hintText: "Entrez un mot de passe",
              hintStyle: GoogleFonts.roboto(fontSize: 16),
              prefixIcon: const Icon(Icons.lock_outline, size: 25),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(width: 1.5),
              ),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            height: 55,
            // padding: const EdgeInsets.symmetric(vertical: 15),
            child: ElevatedButton(
              onPressed: _senData,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 0, 0, 0),
              ),
              child: const Text("Creer",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: "roboto",
                      fontWeight: FontWeight.w600)),
            ),
          ),
        ]),
      ),
    );
  }
}
