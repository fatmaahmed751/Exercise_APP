import 'package:exercises_app/home_page.dart';
import 'package:exercises_app/test.dart';
import 'package:exercises_app/video.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home:HomePage(),
    );
  }
}

