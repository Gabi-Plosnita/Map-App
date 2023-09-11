import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gem_kit/gem_kit_map_controller.dart';
import 'package:gem_kit/widget/gem_kit_map.dart';
import 'package:gem_kit/api/gem_sdksettings.dart';
import 'package:map_app/HomePage/app_bar_widget.dart';
import 'package:map_app/InjectionContainer/injection_container.dart';
import 'package:map_app/InjectionContainer/repositories_impl/landmark_info.dart';
import 'package:map_app/cubit/home_page_cubit.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  late GemMapController mapController;

  final _token =
      'eyJhbGciOiJFUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJkYTQzZmFiZS01Y2ZhLTQ3MDYtYmEzNy03OTJkMTMzNzNiN2EiLCJleHAiOjE2OTQ1NTI0MDAsImlzcyI6IkdlbmVyYWwgTWFnaWMiLCJqdGkiOiI3M2NlZTc5Zi0yMTZmLTQ4MGMtODZmNS1iY2ZiODEyOWQxYmQiLCJuYmYiOjE2OTM5ODQxNDh9.uBZrSj2-WHuTcWN7cVYDR1DfyRgUmG9dmbaBp7KqaFX9iJGBBt86WQes4NWrCM9Tv4f4JVyX6vtinFEvc-X-Pw';

  @override
  void initState() {
    super.initState();
  }

  Future<void> onMapCreated(GemMapController controller) async {
    mapController = controller;
    SdkSettings.setAppAuthorization(_token);

    InjectionContainer.init(mapController);
    context.read<HomePageCubit>().setRepos();

    mapController.registerTouchCallback((pos) async {
      // functie care apeleaza cubit-ul onMapPress
      await BlocProvider.of<HomePageCubit>(context).onMappPress(pos);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<HomePageCubit, HomePageCubitState>(
          builder: (context, state) {
            LandmarkInfo? landmarkInfo = state.currentLandmarkInfo;
            return Stack(
              children: [
                GemMap(
                  onMapCreated: onMapCreated,
                ),
                const Positioned(
                  top: 35,
                  child: AppBarWidget(),
                ),
                if (state.currentState == HomePageEnumState.landmarkPressed)
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 130,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.grey,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.memory(
                                ((landmarkInfo!.image)!),
                                scale: 3,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                '${landmarkInfo.name}',
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                            ],
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.close,
                              color: Colors.red,
                              size: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}
