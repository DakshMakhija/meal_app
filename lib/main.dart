import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/Screens/Meal_detail_screen.dart';
import 'package:flutter_complete_guide/Screens/categories_screen.dart';
import 'package:flutter_complete_guide/Screens/category_meal_screen.dart';
import 'package:flutter_complete_guide/Screens/filters_screen.dart';
import 'package:flutter_complete_guide/Screens/tabs_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
   @override
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            bodyText2: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            subtitle1: TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
            )),
      ),
      //home: CategoriesScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabsScreen(),
        categorymeals.routeName: (ctx) => categorymeals(),
        MealDetailScreen.routename: (ctx) => MealDetailScreen(),
        FiltersScreen.routeName:(ctx) => FiltersScreen(),
      },
      onGenerateRoute: (settings) {
        print(settings.arguments);
        // if(settings.name == '/meal-detail'){
        //  return ...;
        // }
        // else if (settings.name == '/something-else'){
        //  return ...;
        // }
        // return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
      },
    );
  }
}
