import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:instaclone/avatar_icon.dart';
import 'package:instaclone/data/insta_data.dart';
import 'package:instaclone/model/avatar_icon.dart';
import 'package:instaclone/ui/login/login_screen.dart';
import 'package:instaclone/ui/weather/loading.dart';

import 'avatar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Insta Clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
     // home: Loading(),
      home: const LoginScreen(),
    );
  }
}

class InstaScreen extends StatefulWidget {
  const InstaScreen({Key? key}) : super(key: key);

  @override
  _InstaScreenState createState() => _InstaScreenState();
}

class _InstaScreenState extends State<InstaScreen> {
  final List<String> imgList = [
    'https://cdn.pixabay.com/photo/2017/02/22/17/02/beach-2089936_960_720.jpg',
    'https://cdn.pixabay.com/photo/2017/10/10/07/48/beach-2836300_960_720.jpg',
    'https://cdn.pixabay.com/photo/2016/10/22/18/52/beach-1761410_960_720.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Instagram',
            style: TextStyle(
              color: Colors.black,
              fontStyle: FontStyle.italic,
            ),
          ),
          backgroundColor: Colors.white,
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add_box_outlined),
              color: Colors.black,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border_outlined),
              color: Colors.black,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.send_outlined),
              color: Colors.black,
            ),
          ],
        ),
        body: _buildListView(),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              label: '???',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              label: '??????',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              label: '??????',
            ),
          ],
        ));
  }

  ListView _buildListView() {
    return ListView(
      children: [
        const _buildAvatar(), // ????????? ?????????
        const Divider(
          thickness: 1,
          color: Colors.grey,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(
                    'https://cdn.pixabay.com/photo/2016/12/06/17/11/fushimi-inari-shrine-1886975_1280.jpg'),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Arneo Paris',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Arneo',
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz)),
            ],
          ),
        ),
        SizedBox(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              SizedBox(
                width: 360.0,
                height: 200.0,
                child: Image.network(
                  imgList[0],
                ),
              ),
              SizedBox(
                width: 360.0,
                height: 200.0,
                child: Image.network(
                  imgList[1],
                ),
              ),
              Container(
                width: 360.0,
                height: 200.0,
                child: Image.network(
                  imgList[2],
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.message)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.send)),
            Container(
              width: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(
                    Icons.circle,
                    color: Colors.blue,
                    size: 10.0,
                  ),
                  Icon(
                    Icons.circle,
                    color: Colors.grey,
                    size: 10.0,
                  ),
                  Icon(
                    Icons.circle,
                    color: Colors.grey,
                    size: 10.0,
                  ),
                  Icon(
                    Icons.circle,
                    color: Colors.grey,
                    size: 10.0,
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 100,
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.bookmark)),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Aime par Gabdu et dautres personens \n I know there is shape property for Card Widget and it takes ShapeBorder class.',
                style: TextStyle(fontSize: 12),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        )
      ],
    );
  }
}

class _buildAvatar extends StatelessWidget {
  const _buildAvatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: avatarIcon
          .map((AvatarIcon e) => AvatarWidget(avatarIcon: e))
          .toList(),
    );
  }
}
