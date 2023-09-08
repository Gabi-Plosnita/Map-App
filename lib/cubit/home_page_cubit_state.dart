part of 'home_page_cubit.dart';

enum HomePageEnumState {
  initialState,
  landmarkPressed,
}

class HomePageCubitState extends Equatable {
  final HomePageEnumState currentState;
  final Point<num>? currentPosition;
  final Landmark? currentLandmark;

  const HomePageCubitState(
      {this.currentState = HomePageEnumState.initialState,
      this.currentPosition,
      this.currentLandmark});

  HomePageCubitState copyWith(
          {HomePageEnumState? currentState,
          Point<num>? currentPosition,
          Landmark? currentLandmark}) =>
      HomePageCubitState(
          currentState: currentState ?? this.currentState,
          currentPosition: currentPosition ?? this.currentPosition,
          currentLandmark: currentLandmark ?? this.currentLandmark);

  @override
  List<Object?> get props => [currentState,currentPosition,currentLandmark];
}
