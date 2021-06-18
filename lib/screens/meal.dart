import 'package:flutter/material.dart';
import 'package:foodie/widgets/mealitem.dart';
import 'package:foodie/model/data.dart';

class Meal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryId = routeArgs['id'];
    final categoryTitle = routeArgs['title'];
    final categoryMeal = DUMMY_MEAL.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle!),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return MealItem(
              id: categoryMeal[index].id,
              title: categoryMeal[index].title,
              duration: categoryMeal[index].duration,
              imageUrl: categoryMeal[index].imageUrl,
              complexity: categoryMeal[index].complexity,
            );
          },
          itemCount: categoryMeal.length,
        ));
  }
}
