import 'package:flutter/material.dart';
import 'package:instaclone/ui/home/main_screen.dart';
import 'package:instaclone/ui/home/tour_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: ElevatedButton(
            style:
                ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20)),
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => MainScreen()));
            },
            child: const Text('입장'),
      ),
    ));
  }
}
