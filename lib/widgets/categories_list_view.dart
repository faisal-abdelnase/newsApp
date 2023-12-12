import 'package:flutter/material.dart';
import 'package:news/models/category_model.dart';

import 'category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  final List<CategoryModel> categories = const [
    CategoryModel(image: 'assets/business.jpeg', categoryName: 'Business'),
    CategoryModel(
        image: 'assets/entertaiment.jpeg', categoryName: 'Entertainment'),
    CategoryModel(image: 'assets/health.jpeg', categoryName: 'Health'),
    CategoryModel(image: 'assets/science.jpeg', categoryName: 'Science'),
    CategoryModel(image: 'assets/sports.jpeg', categoryName: 'Sports'),
    CategoryModel(image: 'assets/technology.jpeg', categoryName: 'Technology'),
    CategoryModel(image: 'assets/general.jpeg', categoryName: 'General'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            category: categories[index],
          );
        },
      ),
    );
  }
}
