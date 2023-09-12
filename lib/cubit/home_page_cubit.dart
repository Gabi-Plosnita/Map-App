import 'dart:async';
import 'dart:math';
import 'dart:typed_data';
import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gem_kit/api/gem_landmark.dart';
import 'package:map_app/InjectionContainer/injection_container.dart';
import 'package:map_app/InjectionContainer/repositories/landmark_repository.dart';
import 'package:map_app/InjectionContainer/repositories_impl/landmark_info.dart';

part 'home_page_cubit_state.dart';

class HomePageCubit extends Cubit<HomePageCubitState> {
  LandmarkRepository? landmarkRepository;

  HomePageCubit() : super (const HomePageCubitState());

  void setRepos(){
    landmarkRepository = InjectionContainer.repoInstance.get<LandmarkRepository>();
  }

  Future<void> onMappPress(Point<num> pos) async{
    Landmark? presedLandmark = await landmarkRepository!.selectLandmarkByScreenCoordinates(pos);

    if(presedLandmark != null){
      final data = presedLandmark.getImage(100,100);
      final image = await _decodeImageData(data);
      LandmarkInfo landmarkInfo = LandmarkInfo(name: presedLandmark.getName(), coordinates: presedLandmark.getCoordinates(), image: image);
      landmarkRepository!.centerOnCoordinates(presedLandmark.getCoordinates());
      emit(state.copyWith(currentState: HomePageEnumState.landmarkPressed,currentLandmarkInfo: landmarkInfo));
    }
  }

  void onClosedButtonPressed(){
    landmarkRepository!.unhighlightLandmark();
    emit(state.copyWith(currentState: HomePageEnumState.initialState,currentLandmarkInfo: null));
  }

  Future<void> followPosition() async{
    landmarkRepository!.followPosition();
  }

  Future<Uint8List?> _decodeImageData(Uint8List data) async {
    Completer<Uint8List?> c = Completer<Uint8List?>();

    int width = 100;
    int height = 100;

    decodeImageFromPixels(data, width, height, PixelFormat.rgba8888,
        (Image img) async {
      final data = await img.toByteData(format: ImageByteFormat.png);
      if (data == null) {
        c.complete(null);
      }
      final list = data!.buffer.asUint8List();
      c.complete(list);
    });

    return c.future;
  }

}
