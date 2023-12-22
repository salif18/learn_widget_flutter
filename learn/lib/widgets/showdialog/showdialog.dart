import 'package:flutter/material.dart';

class MyModal extends StatefulWidget {
  const MyModal({super.key});

  @override
  State<MyModal> createState() => _MyModalState();
}

class _MyModalState extends State<MyModal> {
  List<dynamic> optionsList = ["homme", "femme"];

  dynamic selectedOptionValue;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text("Ajouter un contenu"),
              content: SizedBox(
                width: 350,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          labelText: "name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          //contentPadding: EdgeInsets.all(10),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1, color: Colors.grey),
                        ),
                        child: DropdownButton<String>(
                          value: selectedOptionValue,
                          dropdownColor: Colors.white,
                          iconSize: 28,
                          isExpanded: true,
                          underline: const SizedBox(),
                          hint: const Text("Selected-type",
                              style: TextStyle(fontSize: 20)),
                          icon:
                              const Icon(Icons.arrow_drop_down_circle_outlined),
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
                      ),
                    ),
                  ],
                ),
              ),
              actions: [
                Row(
                  children: [
                    ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.green)),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("Add",
                          style: TextStyle(color: Colors.white)),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.red)),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("Cancel",
                          style: TextStyle(color: Colors.white)),
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
