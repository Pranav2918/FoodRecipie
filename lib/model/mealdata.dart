enum Complexity { Simple, Challanging, Hard }

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> steps;
  final List<String> ingredients;
  final int duration;
  final Complexity complexity;
  final bool isGultenFree;
  final bool isLactoseFree;
  final bool isVegetarian;
  const Meal({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.steps,
    required this.duration,
    required this.ingredients,
    required this.complexity,
    required this.isGultenFree,
    required this.isLactoseFree,
    required this.isVegetarian,
  });
}
