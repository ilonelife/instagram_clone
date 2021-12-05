import 'package:flutter/material.dart';
import 'package:instaclone/avatar_icon.dart';

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
      home: HelloPage(),
    );
  }
}

class HelloPage extends StatefulWidget {
  const HelloPage({Key key}) : super(key: key);

  @override
  _HelloPageState createState() => _HelloPageState();
}

class _HelloPageState extends State<HelloPage> {
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
              icon: Icon(Icons.favorite),
              color: Colors.black,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.share),
              color: Colors.black,
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AvatarIcon(
                    image:
                        'https://cdn.pixabay.com/photo/2015/03/03/18/58/woman-657753_1280.jpg',
                    iconN: Icon(Icons.add),
                    name: 'Votre story',
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  AvatarIcon(
                    image:
                        'https://cdn.pixabay.com/photo/2015/09/09/20/23/baby-933097_1280.jpg',
                    iconN: Icon(Icons.remove),
                    name: 'Arthur',
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Avatar(
                    image:
                        'https://cdn.pixabay.com/photo/2017/06/18/14/47/bindi-2416039_1280.jpg',
                    name: 'Nicolas',
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Avatar(
                    image:
                        'https://cdn.pixabay.com/photo/2016/11/22/19/25/man-1850181_1280.jpg',
                    name: 'Arneo',
                  ),
                ],
              ),
            ),
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
        ),
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
}
