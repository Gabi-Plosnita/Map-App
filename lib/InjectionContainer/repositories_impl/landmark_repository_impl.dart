import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gem_kit/api/gem_coordinates.dart';
import 'package:gem_kit/api/gem_landmark.dart';
import 'package:gem_kit/api/gem_landmarkstore.dart';
import 'package:gem_kit/api/gem_landmarkstoreservice.dart';
import 'package:gem_kit/api/gem_routingservice.dart';
import 'package:gem_kit/api/gem_searchservice.dart';
import 'package:gem_kit/gem_kit_map_controller.dart';
import 'package:map_app/InjectionContainer/repositories/landmark_repository.dart';

class LandmarkRepositoryImpl implements LandmarkRepository {
  final GemMapController mapController;
  late LandmarkStore favourites;
  late LandmarkStore history;
  late LandmarkStoreService landmarkStoreService;

  late SearchService _searchService;

  LandmarkRepositoryImpl({required this.mapController}){
    SearchService.create(mapController.mapId).then((service) => _searchService = service);

  }

  @override
  Future<void> centerOnCoordinates(Coordinates coordinates) async{
    await mapController.centerOnCoordinates(coordinates);
  }

  @override
  Future<Landmark?> selectLandmarkByScreenCoordinates(Point<num> position) {
    // TODO: implement selectLandmarkByScreenCoordinates
    throw UnimplementedError();
  }

  @override
  void addLandmarkToList(LandmarkList list, Landmark landmark) {
    list.push_back(landmark);
  }
  
  @override
  bool removeLandmarkFromList(LandmarkList list, Landmark landmark) {
    // TODO: implement removeLandmarkFromList
    throw UnimplementedError();
  }

   @override
  bool isInList(LandmarkList list, Landmark landmark) {
    // TODO: implement isInList
    throw UnimplementedError();
  }
}
