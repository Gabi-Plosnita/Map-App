import 'package:flutter/material.dart';

class RealSearchBar extends StatefulWidget {
  const RealSearchBar({Key? key}) : super(key: key);

  @override
  _SearchBarWidgetState createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<RealSearchBar> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // When the search bar is tapped, give focus to the TextField
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Container(
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
        child: Row(
          children: [
            Icon(
              Icons.search,
              color: Colors.black,
            ),
            Expanded(
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Search',
                  border: InputBorder.none,
                ),
                onTap: () {
                  // When the TextField is tapped, open the keyboard
                  FocusScope.of(context).requestFocus(FocusNode());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
