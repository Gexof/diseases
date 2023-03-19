import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:medicare_health_app/constants/colors.dart';
import 'package:medicare_health_app/widgets/mainheading.dart';

import '../constants/sizes.dart';
import '../widgets/custom_carousel_slider.dart';
import '../widgets/diseases_articale.dart';
import '../widgets/diseases_name_heading.dart';

class AboutDiseaseScreen extends StatefulWidget {
  AboutDiseaseScreen({super.key});

  @override
  State<AboutDiseaseScreen> createState() => _AboutDiseaseScreenState();
}

class _AboutDiseaseScreenState extends State<AboutDiseaseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20, top: 50, bottom: 20),
                child: Mainheading(headingName: 'About Disease'),
              ),
              CustomCarouselSlider(),
              DiseasesArticale()
            ],
          ),
        ],
      ),
    );
  }
}
