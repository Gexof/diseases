// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:medicare_health_app/controllers/articles_controller.dart';
import 'package:medicare_health_app/screens/alphabetic_categories_screen.dart';
import 'package:medicare_health_app/screens/home_screen/widgets/alphabetic_grid.dart';
import 'package:medicare_health_app/screens/home_screen/widgets/home_header.dart';
import 'package:medicare_health_app/screens/home_screen/widgets/recommended_list.dart';
import 'package:provider/provider.dart';

import '../../models/article_model.dart';
import '../../widgets/subheading.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      List<Article> articles = await Article.fetchArticles();
      Provider.of<ArticlesController>(context, listen: false)
          .setArticles(articles);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
