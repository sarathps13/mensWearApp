import 'package:flutter/material.dart';
import 'package:mens_wear/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

import './homeScreen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final String username1 = 'sarathps';
  final String password1 = 'sarath';

  final usernameController = TextEditingController();

  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      'Please Login \n To Continue',
                      style: TextStyle(fontSize: 24, fontFamily: 'poppins'),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xffD9D9D9),
                      radius: 65,
                      child: Icon(
                        Icons.person,
                        size: 100,
                        color: Color(0xff000000),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.bottomLeft,
                        colors: [Color(0xFF4CD137), Color(0xFF84D137)]),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),

                      const Padding(
                        padding: EdgeInsets.only(right: 255),
                        child: Text(
                          'username',
                          style: TextStyle(fontFamily: 'poppins', fontSize: 12),
                        ),
                      ),
                      TextFormField(
                        controller: usernameController,
                        decoration: InputDecoration(
                          fillColor: const Color(0xffE1E1E1),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xffE1E1E1)),
                              borderRadius: BorderRadius.circular(15)),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(
                              color: Color(0xffE1E1E1),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 255, bottom: 3),
                        child: Text(
                          'password',
                          style: TextStyle(fontFamily: 'poppins', fontSize: 12),
                        ),
                      ),
                      TextFormField(
                        controller: passwordController,
                        //masking star in password obscure is used
                        obscureText: true,
                        decoration: InputDecoration(
                            fillColor: const Color(0xffE1E1E1),
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0xffE1E1E1)),
                                borderRadius: BorderRadius.circular(15)),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide:
                                  const BorderSide(color: Color(0xffE1E1E1)),
                            )),
                      ),
                      // after password screen
                      const SizedBox(
                        height: 30,
                      ),

                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            backgroundColor: Colors.white,
                            minimumSize: const Size.fromHeight(60), // NEW
                          ),
                          onPressed: () {
                            ScaffoldMessenger.of(context)
                                .removeCurrentSnackBar();
                            checkUserLogin(context);
                          },
                          child: const Text(
                            'Login',
                            style: TextStyle(
                                fontFamily: 'poppins',
                                color: Colors.black,
                                fontSize: 24),
                          )),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
// code for login checking and execute when clicking Login

  void checkUserLogin(BuildContext ctx) async {
    final username = usernameController.text;
    final password = passwordController.text;
    if (username == username1 && password == password1) {
      final sharedprefs = await SharedPreferences.getInstance();
      sharedprefs.setBool(keySave, true);
      Navigator.of(ctx)
          .pushReplacement(MaterialPageRoute(builder: (ctx1) => HomeScreen()));
    } else if (username == '' || password == '') {
      ScaffoldMessenger.of(ctx).showSnackBar(
        const SnackBar(
          content: Text('username  password empty'),
          duration: Duration(seconds: 3),
        ),
      );
    } else {
      ScaffoldMessenger.of(ctx).showSnackBar(
        const SnackBar(
          content: Text('username password does not match'),
          duration: Duration(seconds: 3),
        ),
      );
    }
  }
}
