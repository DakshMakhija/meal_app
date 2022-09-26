import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/models/meal.dart';
import 'package:flutter_complete_guide/Widgets/meal_item.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> fovouriteMeals;

  FavoritesScreen(this.fovouriteMeals);

  @override
  Widget build(BuildContext context) {
    if (fovouriteMeals.isEmpty) {
      return Center(
        child: Text('You have no fav yet -start adding some!'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: fovouriteMeals[index].id,
            title: fovouriteMeals[index].title,
            imageuUrl: fovouriteMeals[index].imageUrl,
            duration: fovouriteMeals[index].duration,
            complexity: fovouriteMeals[index].complexity,
            affordability: fovouriteMeals[index].affordability,
          );
        },
        itemCount: fovouriteMeals.length,
      );
    }
  }
}
