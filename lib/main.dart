import 'package:curso_flutterando_2021/app_controller.dart';
import 'package:curso_flutterando_2021/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Brightness changeTheme() {
    if (AppController.instance.isDarkTheme) {
      return Brightness.dark;
    } else {
      return Brightness.light;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.red,
            brightness: changeTheme(),
          ),
          home: const MyHomePage(title: "Home Page"),
        );
      },
      animation: AppController.instance,
    );
  }
}