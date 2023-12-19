import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_flutter/auth/login.dart';
import 'package:learn_flutter/auth/signup.dart';

class MyAuthentification extends StatefulWidget {
  const MyAuthentification({super.key});

  @override
  State<MyAuthentification> createState() => _MyAuthentificationState();
}

class _MyAuthentificationState extends State<MyAuthentification> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0, 
        backgroundColor:Colors.white.withOpacity(0),
        title: Text("Authentifications", style: GoogleFonts.roboto( fontSize: 25, fontWeight: FontWeight.w600),),
        centerTitle: true, 
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, size:30),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body:const SingleChildScrollView(
        child:Column(
          children: [  
               LoginWidget(),    
               SignupWidget()
          ],
        ),
      )
    );
  }
}