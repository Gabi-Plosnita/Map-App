import 'package:gem_kit/api/gem_coordinates.dart';
import 'package:gem_kit/api/gem_landmark.dart';

import 'dart:math';

abstract class LandmarkRepository {
  Future<List<Landmark>> searchByText(String text, Coordinates coordinates);
  Future<void> centerOnCoordinates(Coordinates coordinates);
  Future<Landmark?> selectLandmarkByScreenCoordinates(Point<num> position);
  void unhighlightLandmark();
  Future<void> followPosition();
}
