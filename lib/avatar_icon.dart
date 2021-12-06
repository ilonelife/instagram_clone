import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instaclone/model/avatar_icon.dart';

class AvatarWidget extends StatelessWidget {
  final AvatarIcon avatarIcon;

  const AvatarWidget({Key key, this.avatarIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Stack(
          children: [
            SizedBox(
              width: 55,
              height: 55,
              child: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(avatarIcon.imgUrl),
              ),
            ),
            // Image.network(
            //   avatarIcon.imgUrl,
            //   width: 55,
            //   height: 55,
            //   fit: BoxFit.cover,
            //
            // ),
            if (avatarIcon.owner)
              Positioned(
                  right: 0,
                  bottom: 0,
                  child: Icon(
                    Icons.add_circle_outlined,
                    color: Colors.blue,
                  )),
            if (avatarIcon.live)
              Positioned(
                  bottom: 0,
                  child: Icon(
                    Icons.voicemail_outlined,
                    color: Colors.red,
                  )),
          ],
        ),
        Text(
          avatarIcon.name,
          style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
