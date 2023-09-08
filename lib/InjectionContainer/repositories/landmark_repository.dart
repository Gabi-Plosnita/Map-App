import 'dart:math';

import 'package:gem_kit/api/gem_coordinates.dart';
import 'package:gem_kit/api/gem_landmark.dart';
//import 'package:gem_kit/api/gem_routingservice.dart';

abstract class LandmarkRepository {
  Future<List<Landmark>> searchByText(String text, Coordinates coordinates);
  Future<void> centerOnCoordinates(Coordinates coordinates);
  Future<Landmark?> selectLandmarkByScreenCoordinates(Point<num> position);

  // void addLandmarkToList(LandmarkList list, Landmark landmark);
  // bool removeLandmarkFromList(LandmarkList list, Landmark landmark);
  // bool isInList(LandmarkList list, Landmark landmark);
}
