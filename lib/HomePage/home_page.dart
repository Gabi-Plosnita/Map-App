import 'package:flutter/material.dart';
import 'package:gem_kit/gem_kit_map_controller.dart';
import 'package:gem_kit/widget/gem_kit_map.dart';
import 'package:gem_kit/api/gem_sdksettings.dart';
import 'package:map_app/HomePage/app_bar_widget.dart';

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

    // mapController.registerTouchCallback((pos) {

    //  })
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            GemMap(
              onMapCreated: onMapCreated,
            ),
            Positioned(
              top: 35, 
              child: AppBarWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
