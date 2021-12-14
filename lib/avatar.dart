import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String image;
  final String name;

  const Avatar({Key? key, required this.image, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Stack(
          children: [
            SizedBox(
              width: 60,
              height: 60,
              child: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(image),
              ),
            ),
          ],
        ),
        Text(
          name,
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
