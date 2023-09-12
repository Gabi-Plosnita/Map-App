part of 'search_page_cubit.dart';

enum SearchPageEnumState {
  notOnSearching,
  onSearch,
}

class SearchPageCubitState extends Equatable {
  final SearchPageEnumState currentState;
  final LandmarkInfo? currentLandmarkInfo;

  const SearchPageCubitState(
      {this.currentState = SearchPageEnumState.notOnSearching,
      this.currentLandmarkInfo});

  SearchPageCubitState copyWith(
          {SearchPageEnumState? currentState,
          LandmarkInfo? currentLandmarkInfo}) =>
      SearchPageCubitState(
          currentState: currentState ?? this.currentState,
          currentLandmarkInfo: currentLandmarkInfo ?? this.currentLandmarkInfo);

  @override
  List<Object?> get props => [currentState, currentLandmarkInfo];
}
