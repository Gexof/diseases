import 'package:flutter/material.dart';

import 'package:medicare_health_app/widgets/mainheading.dart';

import '../widgets/custom_carousel_slider.dart';
import '../widgets/diseases_articale.dart';

class AboutDiseaseScreen extends StatefulWidget {
  AboutDiseaseScreen({super.key});

  @override
  State<AboutDiseaseScreen> createState() => _AboutDiseaseScreenState();
}

class _AboutDiseaseScreenState extends State<AboutDiseaseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
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
              const Padding(
                padding: EdgeInsets.only(left: 20, top: 50, bottom: 20),
                child: Mainheading(headingName: 'About Disease'),
              ),
              CustomCarouselSlider(),
              const DiseasesArticale(),
            ],
          ),
        ],
      ),
    );
  }
}
