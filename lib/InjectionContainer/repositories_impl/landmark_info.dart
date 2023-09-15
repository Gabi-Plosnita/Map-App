import 'dart:typed_data';
import 'package:gem_kit/api/gem_coordinates.dart';

class LandmarkInfo {
  String? name;
  Coordinates? coordinates;
  Uint8List? image;
  double distanceToLandmark;

  LandmarkInfo({required this.name, required this.coordinates, required this.image, required this.distanceToLandmark});
}
