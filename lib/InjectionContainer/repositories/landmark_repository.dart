import 'package:flutter/material.dart';
import 'package:gem_kit/api/gem_coordinates.dart';

import 'dart:math';

import 'package:map_app/InjectionContainer/repositories_impl/landmark_info.dart';

abstract class LandmarkRepository {
  Future<void> centerOnCoordinates(Coordinates coordinates);
  Future<LandmarkInfo?> selectLandmarkByScreenCoordinates(Point<num> position);
  void unhighlightLandmark();

  Future<List<LandmarkInfo>> searchByText(String text);
  Future<LandmarkInfo?> onSearchBarPressed(BuildContext context);
}
