import 'package:flutter/material.dart';
import 'package:foodie/model/data.dart';

class MealDetail extends StatelessWidget {
  static const routeName = '/mealdetails';
  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedMeal = DUMMY_MEAL.firstWhere((meal) => meal.id == mealId);
    return Scaffold(
      appBar: AppBar(title: Text('${selectedMeal.title}')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(selectedMeal.imageUrl, fit: BoxFit.cover),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Ingredients',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)),
              height: 200,
              width: 300,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 5,
                    color: Colors.redAccent,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(selectedMeal.ingredients[index],
                          style: TextStyle(fontSize: 15, color: Colors.white)),
                    ),
                  );
                },
                itemCount: selectedMeal.ingredients.length,
              ),
            ),
            SizedBox(height: 15),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Steps',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    child: ListTile(
                      title: Text(selectedMeal.steps[index]),
                      leading: CircleAvatar(
                        child: Text('# ${(index + 1)}'),
                      ),
                    ),
                    margin: EdgeInsets.only(left: 15, right: 15, top: 15),
                    width: double.infinity,
                  );
                },
                itemCount: selectedMeal.steps.length)
          ],
        ),
      ),
    );
  }
}
