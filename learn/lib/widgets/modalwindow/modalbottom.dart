import 'package:flutter/material.dart';
import 'package:learn_flutter/screens/auth/login.dart';

class MyShowModal extends StatelessWidget {
  const MyShowModal({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.window),
      onPressed: () {
        showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (BuildContext context) {
              return SizedBox(
                width: double.infinity,
                height: 600,
                child: Column(children: [
                  Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      height: 50,
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.arrow_back_ios, size: 28),
                          ),
                        ],
                      ),
                    ),
                  const LoginWidget()
                ]
              ),
            );
          }
        );
      },
    );
  }
}
