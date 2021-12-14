import 'package:flutter/material.dart';

class GuideScreen extends StatelessWidget {
  const GuideScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Guide'),
        backgroundColor: Colors.blueGrey,
        actions: <Widget>[
          IconButton(
              onPressed: () { },
              icon: Icon(Icons.logout_outlined)),
        ],
      ),
      body: Center(
        child: Text('투어 지역 가이드'),
      )
    );
  }
}
