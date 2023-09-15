import 'dart:async';
import 'dart:math';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map_app/InjectionContainer/injection_container.dart';
import 'package:map_app/InjectionContainer/repositories/landmark_repository.dart';
import 'package:map_app/InjectionContainer/repositories_impl/landmark_info.dart';

part 'home_page_cubit_state.dart';

class HomePageCubit extends Cubit<HomePageCubitState> {
  LandmarkRepository? landmarkRepository;

  HomePageCubit() : super (const HomePageCubitState(currentLandmarkInfo: null));

  void setRepos(){
    landmarkRepository = InjectionContainer.repoInstance.get<LandmarkRepository>();
  }

  Future<void> initServices() async
  {
    await landmarkRepository!.initServices();
  }

  Future<void> onMappPress(Point<num> pos) async{
    LandmarkInfo? presedLandmarkInfo = await landmarkRepository!.selectLandmarkByScreenCoordinates(pos);

    if(presedLandmarkInfo != null){
      landmarkRepository!.centerOnCoordinates(presedLandmarkInfo.coordinates!);
      emit(state.copyWith(currentLandmarkInfo: presedLandmarkInfo));
    }
  }

  void onClosedButtonPressed(){
    landmarkRepository!.unhighlightLandmark();
    emit(state.copyWith(currentLandmarkInfo: null));
  }

  Future<void> onSearchBarPressed(BuildContext context) async{
    LandmarkInfo? result = await landmarkRepository!.onSearchBarPressed(context);
    if(result != null) emit(state.copyWith(currentLandmarkInfo: result));
  }

  Future<void> followPosition() async{
    landmarkRepository!.followPosition();
  }

}