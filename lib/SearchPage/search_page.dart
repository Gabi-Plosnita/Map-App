import 'package:flutter/material.dart';
import 'package:map_app/SearchPage/real_search_bar.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            RealSearchBar(),
          ],
        ),
      ),
    );
  }
}