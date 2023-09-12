//import 'package:flutter/widgets.dart';
import 'package:gem_kit/api/gem_coordinates.dart';
import 'package:gem_kit/api/gem_landmark.dart';

import 'dart:math';

import 'package:map_app/InjectionContainer/repositories_impl/landmark_info.dart';

abstract class LandmarkRepository {
  Future<List<Landmark>> searchByText(String text, Coordinates coordinates);
  Future<void> centerOnCoordinates(Coordinates coordinates);
  Future<LandmarkInfo?> selectLandmarkByScreenCoordinates(Point<num> position);
  void unhighlightLandmark();

  //Future<void> onSearchBarPressed(BuildContext context);
}
