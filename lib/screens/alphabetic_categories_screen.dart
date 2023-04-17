import 'package:flutter/material.dart';

import 'package:medicare_health_app/widgets/custom_app_bar.dart';

import '../constants/strings.dart';
import '../widgets/square_card.dart';

class AlphabeticCategoriesScreen extends StatelessWidget {
  const AlphabeticCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Alphabet'),
      body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20.0,
                    mainAxisSpacing: 16,
                  ),
                  itemCount: alphabeticLetters.length,
                  itemBuilder: (context, index) {
                    return SquareCard(
                      alphabet: alphabeticLetters[index],
                      title: "${alphabeticLetters[index]}-Diseases",
                      height: 124,
                      width: 167,
                    );
                  },
                ),
              ),
            ],
          )),
    );
  }
}
