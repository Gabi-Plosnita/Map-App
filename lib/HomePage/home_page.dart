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
    await BlocProvider.of<HomePageCubit>(context).followPosition();
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
                      height: 140,
                      padding: const EdgeInsets.only(
                        left: 16.0,
                        right: 16.0,
                        bottom: 30.0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.grey,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
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
                                onPressed: () {
                                  BlocProvider.of<HomePageCubit>(context)
                                      .onClosedButtonPressed();
                                },
                                icon: const Icon(
                                  Icons.close,
                                  color: Colors.red,
                                  size: 25,
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 45,
                              width: MediaQuery.of(context).size.width * 0.7,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(63, 81, 181, 1),
                                //color: Colors.green,
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 2,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/right_arrow.png',
                                    width: 30,
                                    color: Colors.white,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    'Indicatii',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
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
