import 'package:flutter/material.dart';

class MySearch extends StatefulWidget {
  const MySearch({Key? key}) : super(key: key);

  @override
  State<MySearch> createState() => _MySearchState();
}

class _MySearchState extends State<MySearch> {
  final _formKey = GlobalKey<FormState>();
  final _searchValueController = TextEditingController();

  bool isSearching = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              pinned: true,
              expandedHeight: 100.0,
              floating: false,
              flexibleSpace: FlexibleSpaceBar(
                title: Form(
                  key: _formKey,
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Aucune valeur de recherche";
                      }
                      return null;
                    },
                    controller: _searchValueController,
                    decoration: const InputDecoration(
                      hintText: "Search",
                      hintStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search, size: 20),
                    ),
                  ),
                ),
                centerTitle: true,
                titlePadding: const EdgeInsets.only(bottom: 10.0),
              ),
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 500,
                color: const Color.fromARGB(255, 236, 236, 236),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: _searchValueController.value.text.isNotEmpty
          ? FloatingActionButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  final searchValue = _searchValueController.value.text;
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Recherche en cours....")));
                  FocusScope.of(context).requestFocus(FocusNode());
                  _searchValueController.clear();
                  print("valeur $searchValue a recherche ");
                }
              },
              child: const Icon(Icons.search),
            )
          : null,
    );
  }
}
