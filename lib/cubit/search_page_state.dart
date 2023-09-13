part of 'search_page_cubit.dart';

class SearchPageCubitState extends Equatable {
  final List<LandmarkInfo>? landmarksInfoList;

  const SearchPageCubitState({required this.landmarksInfoList});

  SearchPageCubitState copyWith({List<LandmarkInfo>? landmarksInfoList}) =>
      SearchPageCubitState(
          landmarksInfoList: landmarksInfoList ?? this.landmarksInfoList);

  @override
  List<Object?> get props => [landmarksInfoList];
}
