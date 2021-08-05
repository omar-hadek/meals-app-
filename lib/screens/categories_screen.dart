import 'package:flutter/material.dart';
import 'package:meals_app/widgets/category_item.dart';
import '../data/3.1%20dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DeliMeal'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(22),
        children: DUMMY_CATEGORIES.map((item) {
          return CategoryItem(
            id: item.id,
            title: item.title,
            color: item.color,
          );
        }).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
