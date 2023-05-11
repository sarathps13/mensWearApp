import 'package:flutter/material.dart';
import 'package:mens_wear/logOutButton.dart';

import 'package:shared_preferences/shared_preferences.dart';
import './imageCall.dart';
import './loginScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              RichText(
                text: const TextSpan(children: [
                  TextSpan(
                    text: 'Welcome ,',
                    style: TextStyle(fontFamily: 'poppins', fontSize: 25),
                  ),
                  TextSpan(
                      text: 'Sarath',
                      style: TextStyle(fontFamily: 'popthin', fontSize: 20))
                ]),
              )
            ],
          ),
          backgroundColor: const Color(0xff4CD137),
          actions: const [LogOut()],
        ), //AppBar

        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(14),
              child: Text(
                'Our Products',
                style: TextStyle(
                  fontFamily: 'poppins',
                  fontSize: 25,
                ),
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                children: const <Widget>[
                  ImageCall(),
                  ImageCall(),
                  ImageCall(),
                  ImageCall(),
                  ImageCall(),
                  ImageCall(),
                  ImageCall(),
                  ImageCall()
                ],
              ),
            ),
          ],
        ));
  }
}
