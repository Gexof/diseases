import 'package:flutter/material.dart';
import 'package:medicare_health_app/screens/seasons_screen/widgets/seasons_screen_list.dart';

import 'package:medicare_health_app/widgets/mainheading.dart';

class SeasonsScreen extends StatelessWidget {
  const SeasonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Mainheading(headingName: 'Seasons'),
          SeasonsCardsList(),
        ],
      ),
    );
  }
}
