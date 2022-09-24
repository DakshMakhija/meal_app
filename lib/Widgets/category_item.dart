// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/Screens/category_meal_screen.dart';


class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  CategoryItem(this.id, this.title, this.color);

  void selectcatgory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(categorymeals.routeName, arguments: {
      'id': id,
      'title': title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectcatgory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: GestureDetector(
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Text(
            title,
            style: Theme.of(context).textTheme.subtitle1,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                color.withOpacity(0.7),
                color,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
