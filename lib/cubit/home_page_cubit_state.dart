part of 'home_page_cubit.dart';

class HomePageCubitState extends Equatable {
  final LandmarkInfo? currentLandmarkInfo;

  const HomePageCubitState({required this.currentLandmarkInfo});

  HomePageCubitState copyWith({LandmarkInfo? currentLandmarkInfo}) =>
      HomePageCubitState(currentLandmarkInfo: currentLandmarkInfo);

  @override
  List<Object?> get props => [currentLandmarkInfo];
}
