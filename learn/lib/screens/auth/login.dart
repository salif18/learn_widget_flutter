import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_flutter/screens/auth/signup.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final _formkey = GlobalKey<FormState>();
  final _pseudoController = TextEditingController();
  final _passwordController = TextEditingController();

  _sendData() {
    if (_formkey.currentState!.validate()) {
      final pseudo = _pseudoController.value.text;
      final password = _passwordController.value.text;

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Envois en cours..."))
      );
      FocusScope.of(context).requestFocus(FocusNode());

      // FirebaseFirestore.instance
      //     .collection("users")
      //     .add({"pseudo": pseudo, "password": password}).then((value) {
      //   return "save with success";
      // }).catchError((err) {
      //   return "error $err";
      // });

    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.white,
      child: Form(
        key: _formkey,
        child: Column(children: [
          Container(height: 100, color: Colors.white),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                prefixIcon: const Icon(Icons.person_2_outlined, size: 25),
                fillColor: Colors.white,
                filled: true,
                labelText: "Pseudo",
                labelStyle: GoogleFonts.roboto(
                    fontSize: 20, fontWeight: FontWeight.w600),
                hintText: "Votre pseudo",
                hintStyle: GoogleFonts.roboto(fontSize: 16),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(width: 0.1),
                )),
            controller: _pseudoController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Veuillez remplir ce champs";
              }
            },
          ),
          const SizedBox(height: 33),
          TextFormField(
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
                prefixIcon: const Icon(Icons.vpn_key_outlined, size: 25),
                fillColor: Colors.white,
                filled: true,
                labelText: "Password",
                labelStyle: GoogleFonts.roboto(
                    fontSize: 20, fontWeight: FontWeight.w500),
                hintText: "Votre mot de passe",
                hintStyle: GoogleFonts.roboto(fontSize: 16),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(width: 0.1),
                )),
            controller: _passwordController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Veuillez bien remplir ce champs";
              }
            },
          ),
          const SizedBox(
            height: 33,
          ),
          SizedBox(
              height: 55,
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green[300],
                    elevation: 1,
                  ),
                  onPressed: _sendData,
                  child: const Text(
                    "Se connecter",
                    style: TextStyle(
                        fontFamily: "roboto",
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ))),
          const SizedBox(
            height: 33,
          ),
          SizedBox(
              height: 55,
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                    elevation: 1,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignupWidget(),
                        fullscreenDialog: false,
                      ),
                    );
                  },
                  child: const Text(
                    "Creer un compte",
                    style: TextStyle(
                        fontFamily: "roboto",
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )))
        ]),
      ),
    );
  }
}
