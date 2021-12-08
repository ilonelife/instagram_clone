import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Activity Tour'),
        backgroundColor: Colors.indigoAccent,
        actions: <Widget>[
          IconButton(
              onPressed: () { },
              icon: Icon(Icons.logout_outlined)),
        ],
      ),
      body: Column(
        children: [
          Text('Account'),
        ],
      ),
    );
  }
}