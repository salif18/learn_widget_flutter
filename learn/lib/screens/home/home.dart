import 'package:flutter/material.dart';
import 'package:learn_flutter/widgets/appbar/myappbar.dart';
import 'package:learn_flutter/widgets/caroussels/carousel.dart';
import 'package:learn_flutter/screens/carousels/caroussel.dart';

import 'package:learn_flutter/widgets/modalwindow/modalbottom.dart';
import 'package:learn_flutter/widgets/showdialog/showdialog.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key, required this.keydrawer});

  final keydrawer;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: MyAppBar(
        keydrawer: keydrawer,
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          margin: const EdgeInsets.only(left: 20, top: 20),
                          child: FloatingActionButton(
                            onPressed: () {},
                            child: const Icon(Icons.add_a_photo_outlined,
                                size: 33, color: Colors.green),
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          margin: const EdgeInsets.only(left: 20, top: 20),
                          child: FloatingActionButton(
                            onPressed: () {},
                            child: const Icon(Icons.camera,
                                size: 33, color: Colors.green),
                          ),
                        ),
                        const SizedBox(height: 100,),
                        const MyModal(),
                        const Padding(
                          padding: EdgeInsets.all(10),
                          child:MyShowModal()
                        ),
                      ],
                    ),
                  ],
                ),
                MyCarousel(),
              ],
            )),
      ),
    );
  }
}
