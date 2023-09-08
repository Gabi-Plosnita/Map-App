import 'dart:math';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gem_kit/api/gem_landmark.dart';
import 'package:map_app/InjectionContainer/injection_container.dart';
import 'package:map_app/InjectionContainer/repositories/landmark_repository.dart';

part 'home_page_cubit_state.dart';

class HomePageCubit extends Cubit<HomePageCubitState> {
  LandmarkRepository? landmarkRepository;

  HomePageCubit() : super(HomePageCubitState());

  void setRepos(){
    landmarkRepository = InjectionContainer.repoInstance.get<LandmarkRepository>();
  }

  Future<void> onMappPress(Point<num> pos) async{
    Landmark? presedLandmark = await landmarkRepository!.selectLandmarkByScreenCoordinates(pos);

    if(presedLandmark != null){
      print('Merge cubit');
      emit(state.copyWith(currentState: HomePageState.landmarkPressed,currentLandmark: presedLandmark));
    }

  }
}
