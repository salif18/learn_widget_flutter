import 'package:flutter/material.dart';

class SearchField extends StatefulWidget {
  const SearchField({super.key});

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      margin: const EdgeInsets.all(20),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
         
          Expanded(
            child: Stack(
              children: [
                SizedBox(
                  width: 320,
                  child: TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Search",
                        hintStyle: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w600),
                        border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                       ),
                        prefixIcon: const IconButton(
                        onPressed: null, icon: Icon(Icons.search, size: 30)),
                  )),
                ),
                const Positioned(
                    right: 20, top: 20, child: Icon(Icons.mic, size: 30))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
