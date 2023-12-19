import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView( 
        children: [
          DrawerHeader(
            child: Container(
              color:Colors.white10,
                child:const CircleAvatar(
                  child:Icon(Icons.person_2_outlined, size: 50,)
                ),
              ),
            ),
            ListTile( 
              leading:IconButton( 
                onPressed: (){},
                icon: const Icon(Icons.edit, size:33),
              ),
              title: const Text("Modifier", style:TextStyle(fontSize: 18, fontFamily: 'roboto',fontWeight: FontWeight.w500)),
            ),
             ListTile( 
              leading:IconButton( 
                onPressed: (){},
                icon: const Icon(Icons.co_present, size:33),
              ),
              title: const Text("Confidentiality",style:TextStyle(fontSize: 18, fontFamily: 'roboto',fontWeight: FontWeight.w500)),
            ),
            ListTile( 
              leading:IconButton( 
                onPressed: (){},
                icon:const Icon(Icons.security, size:33),
              ),
              title: const Text("Security",style:TextStyle(fontSize: 18, fontFamily: 'roboto',fontWeight: FontWeight.w500)),
            ), 
             ListTile( 
              leading:IconButton( 
                onPressed: (){},
                icon:const Icon(Icons.settings_outlined,size:33),
              ),
              title: const Text("Settings",style:TextStyle(fontSize: 18, fontFamily: 'roboto',fontWeight: FontWeight.w500)),
            ),
            
        ],
      )
    );
  }
}