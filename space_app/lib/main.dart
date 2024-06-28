import 'package:flutter/material.dart';
import 'package:space_app/pages/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Space App',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const IntroPage(),
    );
  }
}
