import 'package:flutter/material.dart';

class CategoryCard extends StatefulWidget {
  final String image;
  final String categoryName;

  CategoryCard({required this.image, required this.categoryName});

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.deepPurple[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Image.asset(widget.image, height: 30,),
            SizedBox(width: 10,),
            Text(widget.categoryName),
          ],
        ),
      ),
    );
  }
}
