import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map_app/Routes/routes_generator.dart';
import 'package:map_app/Routes/routes_name.dart';
import 'package:map_app/cubit/home_page_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomePageCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Magic Earth',
        onGenerateRoute: RoutesGenerator.generateRoute,
        initialRoute: homePage,
      ),
    );
  }
}
