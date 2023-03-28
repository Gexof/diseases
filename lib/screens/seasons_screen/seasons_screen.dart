import 'package:flutter/material.dart';
import 'package:medicare_health_app/screens/season_screen.dart';
import 'package:medicare_health_app/screens/seasons_screen/widgets/sasons_screen_list.dart';

import 'package:medicare_health_app/widgets/mainheading.dart';

import '../../widgets/custom_card.dart';

class SeasonsScreen extends StatelessWidget {
  const SeasonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Mainheading(headingName: 'Seasons'),
          SasonsScreenList(),
        ],
      ),
    );
  }
}
