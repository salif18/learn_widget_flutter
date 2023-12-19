import 'package:flutter/material.dart';
import 'package:learn_flutter/models/galeries.dart';

// ignore: must_be_immutable
class Photos extends StatelessWidget {
  Photos({super.key}) ;

  List<Galeries> galeries = Galeries.createGaleries();

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, // Utilisation de 2 colonnes pour l'exemple, ajustez selon vos besoins
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
      ),
      itemCount: galeries.length,
      itemBuilder: (BuildContext context, int index) {
        var item = galeries[index];
        return Image.asset(
          item.img,
          fit: BoxFit.cover, // Ajustez selon vos besoins
        );
      },
    );
  }
}
