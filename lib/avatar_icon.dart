import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AvatarIcon extends StatelessWidget {
  final String image;
  final Icon iconN;
  final String name;

  AvatarIcon({Key key, this.image, this.iconN, this.name}) : super(key: key);

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
            Container(
                width: 60,
                height: 60,
                alignment: Alignment.bottomRight,
                child: SizedBox(
                  width: 25,
                  height: 25,
                  child: FloatingActionButton(
                    onPressed: null,
                    child: iconN,
                  ),
                )),
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
