import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: MediaQuery.of(context).size.width / 1.5,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 247, 245, 245),
        border: Border.all(
          color: Colors.grey,
          width: 1.4,
        ),
        borderRadius: BorderRadius.circular(35),
      ),
      child: const Row(
        children: [
          Icon(
            Icons.search,
            color: Colors.black,
          ),
          Text(
            'Search',
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
