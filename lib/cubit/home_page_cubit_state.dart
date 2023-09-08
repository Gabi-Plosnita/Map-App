part of 'home_page_cubit.dart';

enum HomePageState {
  initialState,
  landmarkPressed,
}

class HomePageCubitState extends Equatable {
  final HomePageState currentState;
  final Point<num>? currentPosition;
  final Landmark? currentLandmark;

  const HomePageCubitState(
      {this.currentState = HomePageState.initialState,
      this.currentPosition,
      this.currentLandmark});

  HomePageCubitState copyWith(
          {HomePageState? currentState,
          Point<num>? currentPosition,
          Landmark? currentLandmark}) =>
      HomePageCubitState(
          currentState: currentState ?? this.currentState,
          currentPosition: currentPosition ?? this.currentPosition,
          currentLandmark: currentLandmark ?? this.currentLandmark);

  @override
  List<Object?> get props => [currentState,currentPosition,currentLandmark];
}
