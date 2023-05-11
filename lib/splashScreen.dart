import 'package:flutter/material.dart';
import 'package:mens_wear/homescreen.dart';
import 'package:mens_wear/main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import './loginScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashState();
}

class _SplashState extends State<SplashScreen> {
  @override
  void initState() {
    checkUserLoggedIn();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'WELCOmE',
          style: TextStyle(
              fontFamily: 'poppins', fontSize: 30, color: Colors.orange),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Future<void> gotoLogin() async {
    Future.delayed(
      const Duration(seconds: 2),
    );
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => LoginScreen(),
      ),
    );
  }
// to store sharedprefernces and to execute

  Future<void> checkUserLoggedIn() async {
    final sharesprefs = await SharedPreferences.getInstance();
    final userLoggedIn = sharesprefs.getBool(keySave);
    if (userLoggedIn == null || userLoggedIn == false) {
      gotoLogin();
    } else {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
      );
    }
  }
}
