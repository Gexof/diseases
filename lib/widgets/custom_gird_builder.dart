import 'package:flutter/material.dart';

class CustomGridBuilder extends StatelessWidget {
  const CustomGridBuilder({
    super.key,
    required this.gridMap,
    required this.itemCount,
    required this.itemBuilder,
  });

  final List<Map<String, dynamic>> gridMap;
  final int itemCount;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20.0,
          mainAxisSpacing: 16,
        ),
        itemCount: itemCount,
        itemBuilder: itemBuilder,
      ),
    );
  }
}
