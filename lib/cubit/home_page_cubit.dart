import 'dart:async';
import 'dart:math';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map_app/InjectionContainer/injection_container.dart';
import 'package:map_app/InjectionContainer/repositories/landmark_repository.dart';
import 'package:map_app/InjectionContainer/repositories/position_repository.dart';
import 'package:map_app/InjectionContainer/repositories_impl/landmark_info.dart';

part 'home_page_cubit_state.dart';

class HomePageCubit extends Cubit<HomePageCubitState> {
  LandmarkRepository? landmarkRepository;
  PositionRepository? positionRepository;

  HomePageCubit() : super (const HomePageCubitState());

  void setRepos(){
    landmarkRepository = InjectionContainer.repoInstance.get<LandmarkRepository>();
    positionRepository = InjectionContainer.repoInstance.get<PositionRepository>();
  }

  Future<void> onMappPress(Point<num> pos) async{
    LandmarkInfo? presedLandmarkInfo = await landmarkRepository!.selectLandmarkByScreenCoordinates(pos);

    if(presedLandmarkInfo != null){
      landmarkRepository!.centerOnCoordinates(presedLandmarkInfo.coordinates!);
      emit(state.copyWith(currentState: HomePageEnumState.landmarkPressed,currentLandmarkInfo: presedLandmarkInfo));
    }
  }

  void onClosedButtonPressed(){
    landmarkRepository!.unhighlightLandmark();
    emit(state.copyWith(currentState: HomePageEnumState.initialState,currentLandmarkInfo: null));
  }

  Future<void> followPosition() async{
    positionRepository!.followPosition();
  }

  Future<void> onSearchBarPressed(BuildContext context) async{
    await landmarkRepository!.onSearchBarPressed(context);
  }

}
