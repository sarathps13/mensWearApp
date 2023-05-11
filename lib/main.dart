import 'package:flutter/material.dart';
import 'package:mens_wear/splashScreen.dart';

const keySave = 'userLoggedIn';
void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.cyan),
      home: const SplashScreen(),
    );
  }
}
