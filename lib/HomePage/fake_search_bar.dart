import 'package:flutter/material.dart';
import 'package:map_app/Routes/routes_name.dart';

class FakeSearchBar extends StatelessWidget {
  const FakeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // apelezi on search bar pressed din cubit //
        Navigator.pushNamed(context, searchPage);
      },
      child: Container(
        height: 40,
        width: MediaQuery.of(context).size.width / 1.5,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 247, 245, 245),
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
      ),
    );
  }
}
