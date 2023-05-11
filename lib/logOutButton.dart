import 'package:flutter/material.dart';
import 'package:mens_wear/loginScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LogOut extends StatelessWidget {
  const LogOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10, left: 5, bottom: 10, top: 10),
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xffFFFFFF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: () {
          showDialog(
            context: context,
            builder: (ctx) {
              return AlertDialog(
                title: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    'Are you sure you want\n             to Logout?',
                    style: TextStyle(fontFamily: 'poppins'),
                  ),
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        minimumSize: const Size(100, 36),
                        backgroundColor: const Color(0xff4CD137),
                      ),
                      onPressed: () async {
                        final sharedprefs =
                            await SharedPreferences.getInstance();
                        await sharedprefs.clear();

                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(builder: (ctx) => LoginScreen()),
                            (route) => false);
                      },
                      child: const Text(
                        'YES',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 25),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          side: const BorderSide(color: Color(0xff4CD137)),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          minimumSize: const Size(100, 36),
                          backgroundColor: Colors.white),
                      onPressed: () {
                        Navigator.of(ctx).pop();
                      },
                      child: const Text(
                        'NO',
                        style: TextStyle(color: Color(0xff4CD137)),
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        },
        label: const Text(
          'Log Out',
          style: TextStyle(color: Color(0xff131010)),
        ),
        icon: const Icon(
          Icons.logout,
          color: Color(0xff131010),
        ),
      ),
    );
  }
}
