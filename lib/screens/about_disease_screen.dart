import 'package:flutter/material.dart';

import '../models/article_model.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_carousel_slider.dart';
import '../widgets/diseases_articale.dart';

class AboutDiseaseScreen extends StatefulWidget {
  const AboutDiseaseScreen({
    required this.article,
    super.key,
  });

  final Article article;

  @override
  State<AboutDiseaseScreen> createState() => _AboutDiseaseScreenState();
}

class _AboutDiseaseScreenState extends State<AboutDiseaseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: widget.article.title),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              CustomCarouselSlider(
                article: widget.article,
              ),
              DiseasesArticale(
                article: widget.article,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
