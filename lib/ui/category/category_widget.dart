import 'package:flutter/material.dart';
import 'package:instaclone/model/avatar_icon.dart';
import 'package:instaclone/model/category_icon.dart';

class CategoryWidget extends StatelessWidget {
  final CategoryIcon categoryIcon;

  const CategoryWidget({Key? key, required this.categoryIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                width: 50,
                height: 60,
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(categoryIcon.categoryImage),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            categoryIcon.categoryName,
            style: TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }
}
