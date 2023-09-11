import 'package:flutter/material.dart';
import 'package:map_app/HomePage/fake_search_bar.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: const Color.fromARGB(255, 199, 194, 194),
          width: 1.4,
        ),
        borderRadius: BorderRadius.circular(35),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
              color: Color.fromRGBO(63, 81, 181, 1),
            ),
          ),
          const FakeSearchBar(),
          Image.asset(
            'assets/right_arrow.png',
            width: 30,
          ),
        ],
      ),
    );
  }
}
