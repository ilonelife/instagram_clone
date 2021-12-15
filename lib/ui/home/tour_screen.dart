import 'package:flutter/material.dart';

class TourScreen extends StatelessWidget {
  const TourScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Guide'),
        backgroundColor: Colors.blueGrey,
        actions: <Widget>[
          IconButton(
              onPressed: () { },
              icon: const Icon(Icons.logout_outlined)),
        ],
      ),
      body: Column(
        children: const [
          Text('Guide'),
        ],
      ),
    );
  }
}
