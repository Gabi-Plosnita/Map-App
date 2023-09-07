import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: CupertinoSearchTextField(
          padding: const EdgeInsets.all(10),
          placeholder: 'Search',
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.black,
          ), 
          autofocus: true,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 247, 245, 245),
            border: Border.all(
              color: Colors.grey,
              width: 1.4,
            ),
            borderRadius: BorderRadius.circular(35),
          ),
        ),
        leading: IconButton(
          iconSize: 35,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Color.fromRGBO(63, 81, 181, 1),
          ),
        ),
      ),
    );
  }
}
