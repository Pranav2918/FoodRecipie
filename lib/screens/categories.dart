import 'package:flutter/material.dart';
import 'package:foodie/widgets/category_item.dart';
import 'package:foodie/model/data.dart';

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: GridView(
          children: DUMMY_CATEGORIES
              .map((e) => CategoryItem(
                    title: e.name,
                    color: e.color,
                    id: e.id,
                  ))
              .toList(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 150,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 3 / 2),
        ),
      ),
    );
  }
}
