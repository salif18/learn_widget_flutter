import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(60);

  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Google",
          style: GoogleFonts.montserrat(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          )),
        
      elevation: 0,
      backgroundColor: Colors.white.withOpacity(0),
      excludeHeaderSemantics: true,
      centerTitle: true,
      leading: DrawerButton(
        onPressed: () {
           Scaffold.of(context).openDrawer();
        },
      ),
      actions: const [
        Icon(Icons.favorite),
        SizedBox(
          width: 10,
        ),
        Icon(Icons.camera),
        SizedBox(
          width: 10,
        )
      ],
    );
  }
}
