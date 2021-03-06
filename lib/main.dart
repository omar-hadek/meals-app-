import 'package:flutter/material.dart';
import 'package:meals_app/screens/category_item_screen.dart';
import '../screens/categories_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        accentColor: Colors.greenAccent,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              bodyText2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              headline1: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),

      ),
      home: CategoriesScreen(),
      routes: {
        '/':(context) => CategoriesScreen(),
        '/categoryItem': (vontext)=> CategoryItemScreen(),
      },
    );
  }
}
