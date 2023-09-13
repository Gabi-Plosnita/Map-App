import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map_app/InjectionContainer/injection_container.dart';
import 'package:map_app/InjectionContainer/repositories/landmark_repository.dart';
import 'package:map_app/InjectionContainer/repositories_impl/landmark_info.dart';

part 'search_page_state.dart';

class SearchPageCubit extends Cubit<SearchPageCubitState> {
  LandmarkRepository? landmarkRepository;

  SearchPageCubit() : super(const SearchPageCubitState(landmarksInfoList: null));

  void setRepos() {
    landmarkRepository =
        InjectionContainer.repoInstance.get<LandmarkRepository>();
  }

  Future<void> onSearchBarSubmitted(String text) async {
    List<LandmarkInfo> landmarks = await landmarkRepository!.searchByText(text);
    emit(state.copyWith(landmarksInfoList: landmarks));
  }
}
