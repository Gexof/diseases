import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medicare_health_app/constants/colors.dart';

import 'package:medicare_health_app/widgets/mainheading.dart';
import 'package:medicare_health_app/widgets/subheading.dart';

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
      appBar: AppBar(
        title: const Text(
          'About Disease',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/icons/arrow.svg',
            colorFilter: const ColorFilter.mode(primaryColor, BlendMode.srcIn),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
      ),
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
