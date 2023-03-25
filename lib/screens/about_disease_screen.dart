import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medicare_health_app/constants/colors.dart';

import 'package:medicare_health_app/widgets/mainheading.dart';
import 'package:medicare_health_app/widgets/subheading.dart';

import '../widgets/custom_app_bar.dart';
import '../widgets/custom_carousel_slider.dart';
import '../widgets/diseases_articale.dart';

class AboutDiseaseScreen extends StatefulWidget {
  const AboutDiseaseScreen({super.key});

  @override
  State<AboutDiseaseScreen> createState() => _AboutDiseaseScreenState();
}

class _AboutDiseaseScreenState extends State<AboutDiseaseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'About Disease'),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              CustomCarouselSlider(),
              const DiseasesArticale(),
            ],
          ),
        ],
      ),
    );
  }
}
