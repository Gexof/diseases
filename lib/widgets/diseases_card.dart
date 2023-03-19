import 'package:flutter/material.dart';

class DiseasesCard extends StatelessWidget {
  final String alphabet;
  final String title;
  double height;
  double width;

  DiseasesCard({
    super.key,
    required this.alphabet,
    required this.title,
    this.height = 138,
    this.width = 184.0,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
                child: Center(
                  child: Text(
                    alphabet,
                    style: const TextStyle(
                      fontSize: 64,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
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
    );
  }
}
