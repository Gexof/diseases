import 'package:flutter/material.dart';

import '../screens/letter_articles_screen.dart';

class SquareCard extends StatelessWidget {
  final String? alphabet;
  final String? img;
  final String title;
  final double height;
  final double width;

  const SquareCard({
    super.key,
    this.alphabet,
    this.img,
    required this.title,
    this.height = 138,
    this.width = 184.0,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return LetterArticlesScreen(
            letter: alphabet!,
          );
        }));
      },
      child: Column(
        children: [
          const SizedBox(height: 16),
          SizedBox(
            child: Column(
              children: [
                Container(
                    height: height,
                    width: width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: Colors.grey,
                    ),
                    child: img == null
                        ? Center(
                            child: Text(
                              alphabet!,
                              style: const TextStyle(
                                fontSize: 64,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          )
                        : ClipRRect(
                            borderRadius: BorderRadius.circular(13),
                            child: Image.network(
                              img!,
                              fit: BoxFit.cover,
                            ),
                          )),
                const SizedBox(height: 8),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
