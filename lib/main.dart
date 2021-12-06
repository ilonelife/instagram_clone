import 'package:flutter/material.dart';
import 'package:instaclone/avatar_icon.dart';
import 'package:instaclone/data/insta_data.dart';
import 'package:instaclone/model/avatar_icon.dart';

import 'avatar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Insta Clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
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
              icon: Icon(Icons.add_box_outlined),
              color: Colors.black,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_border_outlined),
              color: Colors.black,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.send_outlined),
              color: Colors.black,
            ),
          ],
        ),
        body: _buildListView(),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.black,),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.black,),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.play_circle, color: Colors.black,),
              label: 'School',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings, color: Colors.black,),
              label: 'Settings',
            ),
          ],
        ));
  }

  ListView _buildListView() {
    return ListView(
        children: [
          _buildAvatar(),
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                      'https://cdn.pixabay.com/photo/2016/12/06/17/11/fushimi-inari-shrine-1886975_1280.jpg'),
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Arneo Paris',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Arneo',
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
              ],
            ),
          ),
          Container(
            child: Image.network(
              'https://cdn.pixabay.com/photo/2017/10/10/07/48/beach-2836300_1280.jpg',
            ),
          ),
          Row(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
              IconButton(onPressed: () {}, icon: Icon(Icons.message)),
              IconButton(onPressed: () {}, icon: Icon(Icons.send)),
              Container(
                width: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
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
              SizedBox(
                width: 100,
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.bookmark)),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    'Aime par Gabdu et dautres personens \n I know there is shape property for Card Widget and it takes ShapeBorder class.',
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.left,
                  ),
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
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: avatarIcon.map((AvatarIcon e) => AvatarWidget(avatarIcon: e)).toList(),
    );
  }
}
