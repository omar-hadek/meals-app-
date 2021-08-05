import 'package:flutter/material.dart';

class CategoryItemScreen extends StatelessWidget {
  final String title;
  final Color color;

  const CategoryItemScreen({ Key? key ,required this.title,required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: color,
      ),
    );
  }
}