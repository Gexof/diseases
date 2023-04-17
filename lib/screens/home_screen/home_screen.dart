import 'package:flutter/material.dart';
import 'package:medicare_health_app/screens/alphabetic_categories_screen.dart';
import 'package:medicare_health_app/screens/home_screen/widgets/alphabetic_grid.dart';
import 'package:medicare_health_app/screens/home_screen/widgets/home_header.dart';
import 'package:medicare_health_app/screens/home_screen/widgets/recommended_list.dart';

import '../../models/article_model.dart';
import '../../widgets/subheading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Article().fetchArticles();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50),
            const HomeHeader(),
            Subheading(
              title: 'Alphabetically',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const AlphabeticCategoriesScreen()));
              },
            ),
            const AlphabeticGrid(),
            const Subheading(title: 'Recommended'),
            const RecommendedList(),
          ],
        ),
      ),
    );
  }
}
