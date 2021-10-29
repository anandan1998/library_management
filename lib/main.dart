import 'package:flutter/material.dart';
import 'package:library_management/Screens/Home/home_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

        theme: ThemeData(
          // primaryColor: Color.fromRGBO(5, 125, 205, 100),
        ),
        home: HomeScreen()
    );
  }
}

