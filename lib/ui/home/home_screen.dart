import 'package:flutter/material.dart';
import 'package:instaclone/data/activity_data.dart';
import 'package:instaclone/model/category_icon.dart';
import 'package:instaclone/ui/category/category_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Activity Tour'),
        backgroundColor: Colors.orange,
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.logout_outlined)),
        ],
      ),
      body: ListView(
        children: [
          Image.network(
              'https://cdn.pixabay.com/photo/2013/09/11/00/28/hawaii-181082_960_720.jpg'),
          _buildCategory(),
          Divider(
            thickness: 1,
            color: Colors.blueGrey,
          )
        ],
      ),
    );
  }
}

class _buildCategory extends StatelessWidget {
  const _buildCategory({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: categoryIcon
          .map((CategoryIcon e) => CategoryWidget(
                categoryIcon: e,
              ))
          .toList(),
    );
  }
}
