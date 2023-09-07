import 'package:flutter/material.dart';
import 'package:map_app/Routes/routes_generator.dart';
import 'package:map_app/Routes/routes_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Magic Earth',
        onGenerateRoute: RoutesGenerator.generateRoute,
        initialRoute: homePage,
    );
  }
}
