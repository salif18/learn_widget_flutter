import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_flutter/screens/auth/login.dart';

class MyAuthentification extends StatefulWidget {
  const MyAuthentification({super.key});

  @override
  State<MyAuthentification> createState() => _MyAuthentificationState();
}

class _MyAuthentificationState extends State<MyAuthentification> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0, 
        backgroundColor:Colors.white.withOpacity(0),
        title: Text("Authentifications", style: GoogleFonts.roboto( fontSize: 25, fontWeight: FontWeight.w600),),
        centerTitle: true, 
        leading: IconButton(
          icon: const Icon(Icons.login_outlined, size:30),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body:const SingleChildScrollView(
        child:LoginWidget(),
      )
    );
  }
}