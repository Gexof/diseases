import 'package:flutter/material.dart';

import 'package:medicare_health_app/widgets/custom_app_bar.dart';

import '../constants/strings.dart';
import '../widgets/square_card.dart';

class LetterArticlesScreen extends StatelessWidget {
  const LetterArticlesScreen({
    required this.letter,
    super.key,
  });

  final String letter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: '$letter-Diseases'),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20.0,
                  mainAxisSpacing: 16,
                ),
                itemCount: alphabet.length,
                itemBuilder: (context, index) {
                  return SquareCard(
                    alphabet: "${alphabet[index]['alphabet']}",
                    title: "${alphabet[index]['title']}",
                    height: 124,
                    width: 167,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
