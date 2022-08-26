import 'package:flutter/material.dart';
import 'package:flutter_application_1/generate_route.dart';
import 'generate_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme:  const TextTheme(
          bodyLarge:  TextStyle(
            fontSize: 60,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      onGenerateRoute: GenerateRoute.generateRoute,
    );
  }
}