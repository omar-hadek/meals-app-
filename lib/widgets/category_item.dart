import 'package:flutter/material.dart';
import '../screens/category_item_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final Color color;
  final String title;
  const CategoryItem(
      {Key? key, required this.color, required this.title, required this.id})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryItemScreen(title: title, color: color);
            },
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline1,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [color.withOpacity(0.7), color],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
