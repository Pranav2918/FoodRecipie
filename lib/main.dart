import 'package:flutter/material.dart';
import 'package:foodie/screens/categories.dart';
import 'package:foodie/screens/meal.dart';
import 'package:foodie/screens/mealdetails.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Colors.redAccent),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/meal': (context) => Meal(),
        MealDetail.routeName: (context) => MealDetail(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Foodie'),
      ),
      body: Category(),
    );
  }
}
