import 'package:flutter/material.dart';
import 'package:foodie/screens/meal.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  String id;
  final Color color;
  CategoryItem({required this.title, required this.color, required this.id});

  selectMeal(BuildContext context) {
    Navigator.of(context)
        .pushNamed('/meal', arguments: {'id': id, 'title': title});
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => selectMeal(context),
      child: Container(
        padding: EdgeInsets.all(15.0),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
                fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [color.withOpacity(0.7), color])),
      ),
    );
  }
}
