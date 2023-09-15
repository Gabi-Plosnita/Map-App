import 'package:gem_kit/gem_kit_map_controller.dart';
import 'package:get_it/get_it.dart';
import 'package:map_app/InjectionContainer/repositories/landmark_repository.dart';
import 'package:map_app/InjectionContainer/repositories_impl/landmark_repository_impl.dart';

class InjectionContainer {
  static final repoInstance = GetIt.instance;

  static void init(GemMapController mapController) {
    repoInstance.registerLazySingleton<LandmarkRepository>(
        () => LandmarkRepositoryImpl(mapController: mapController));
  }
}
