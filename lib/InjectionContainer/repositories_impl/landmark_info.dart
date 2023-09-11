import 'dart:typed_data';
import 'package:gem_kit/api/gem_coordinates.dart';

class LandmarkInfo {
  String? name;
  Coordinates? coordinates;
  Uint8List? image;

  LandmarkInfo({required this.name, required this.coordinates, required this.image});

}

// deactivateAllHighlights din mapcontroller //
