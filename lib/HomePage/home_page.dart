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

  final _token = 'YOUR_API_TOKEN';

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