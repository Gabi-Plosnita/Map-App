part of 'home_page_cubit.dart';

enum HomePageEnumState {
  initialState,
  landmarkPressed,
}

class HomePageCubitState extends Equatable {
  final HomePageEnumState currentState;
  final Point<num>? currentPosition;
  final LandmarkInfo? currentLandmarkInfo;

  const HomePageCubitState(
      {this.currentState = HomePageEnumState.initialState,
      this.currentPosition,
      this.currentLandmarkInfo});

  HomePageCubitState copyWith(
          {HomePageEnumState? currentState,
          Point<num>? currentPosition,
          LandmarkInfo? currentLandmarkInfo}) =>
      HomePageCubitState(
          currentState: currentState ?? this.currentState,
          currentPosition: currentPosition ?? this.currentPosition,
          currentLandmarkInfo: currentLandmarkInfo ?? this.currentLandmarkInfo);

  @override
  List<Object?> get props => [currentState,currentPosition,currentLandmarkInfo];
}
