import 'package:flutter/material.dart';

class TourScreen extends StatelessWidget {
  const TourScreen({Key key}) : super(key: key);

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
      body: Column(
        children: [
          Text('Guide'),
        ],
      ),
    );
  }
}
