import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/sizes.dart';
import 'diseases_name_heading.dart';

class DiseasesArticale extends StatelessWidget {
  const DiseasesArticale({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const DiseasesNameHeading(),
        const Padding(
          padding: EdgeInsets.only(
            left: 20,
            top: 28,
          ),
          child: Text(
            'Title-1',
            style: TextStyle(
              color: primaryColor,
              fontSize: subHeadings,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 9, left: 21, right: 20),
          child: const Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ut est odio. Etiam tristique non magna in efficitur. Quisque mollis id felis nec efficitur. Integer semper ac ex eu tempor. Phasellus volutpat, dolor et mollis suscipit, elit lacus pulvinar ligula, quis volutpat enim nisl in tortor. Nullam et laoreet libero, sed congue felis. Quisque elit nisi, pretium in magna eu, pharetra tristique velit. Sed eros lectus, bibendum a lectus eget, vulputate malesuada ligula.',
            style: TextStyle(
              fontSize: subHeadings,
              fontWeight: FontWeight.w400,
              color: Color(0xff4d4d4d),
            ),
          ),
        ),
      ],
    );
  }
}
