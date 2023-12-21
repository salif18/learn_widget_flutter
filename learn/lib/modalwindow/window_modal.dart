import 'package:flutter/material.dart';

class MyModal extends StatefulWidget {
  const MyModal({super.key});

  @override
  State<MyModal> createState() => _MyModalState();
}

class _MyModalState extends State<MyModal> {
  List<dynamic> optionsList = ["homme", "femme"];

  var selectedOptionValue;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text("Ajouter un contenu"),
              content: Container(
                width: 350,

                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "name",
                          contentPadding: EdgeInsets.all(10),
                        ),
                      ),
                    ),
                    DropdownButton<String>(
                      value: selectedOptionValue,
                      items: optionsList.map((option) {
                        return DropdownMenuItem<String>(
                          value: option,
                          child: Text(option),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() => selectedOptionValue = value);
                      },
                    ),
                  ],
                ),
              ),
              actions: [
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Ajoutez ici le code pour ajouter l'élément avec le nom et la valeur sélectionnée
                        Navigator.pop(context);
                      },
                      child: const Text("Add"),
                    ),
                    IconButton(
                      onPressed: () {
                        // Fermez la boîte de dialogue en appelant Navigator.pop
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.cancel_outlined),
                    ),
                  ],
                ),
              ],
            );
          },
        );
      },
      child: const Icon(Icons.add, size: 30),
    );
  }
}
