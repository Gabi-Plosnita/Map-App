import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gem_kit/gem_kit_map_controller.dart';
import 'package:gem_kit/widget/gem_kit_map.dart';
import 'package:gem_kit/api/gem_sdksettings.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  late GemMapController mapController;

  final _token =
      'eyJhbGciOiJFUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJkYTQzZmFiZS01Y2ZhLTQ3MDYtYmEzNy03OTJkMTMzNzNiN2EiLCJleHAiOjE2OTQ1NTI0MDAsImlzcyI6IkdlbmVyYWwgTWFnaWMiLCJqdGkiOiI3M2NlZTc5Zi0yMTZmLTQ4MGMtODZmNS1iY2ZiODEyOWQxYmQiLCJuYmYiOjE2OTM5ODQxNDh9.uBZrSj2-WHuTcWN7cVYDR1DfyRgUmG9dmbaBp7KqaFX9iJGBBt86WQes4NWrCM9Tv4f4JVyX6vtinFEvc-X-Pw';

  @override
  void initState() {
    super.initState();
  }

  Future<void> onMapCreated(GemMapController controller) async {
    mapController = controller;

    SdkSettings.setAppAuthorization(_token);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Container(
          height: 35,
          width: MediaQuery.of(context).size.width / 1.5,
          decoration: BoxDecoration(
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
      ),
      body: Center(
        child: Stack(
          children: [
            GemMap(
              onMapCreated: onMapCreated,
            ),
          ],
        ),
      ),
    );
  }
}
