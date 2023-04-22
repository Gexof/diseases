import 'package:flutter/material.dart';
import 'package:medicare_health_app/controllers/articles_controller.dart';
import 'package:provider/provider.dart';

import '../../../constants/strings.dart';
import '../../../widgets/square_card.dart';

// TODO: REFACTOR WHEN YOU HAVE DATA
class RecommendedList extends StatelessWidget {
  const RecommendedList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2.8,
      child: ListView.separated(
        padding: const EdgeInsets.only(left: 20, right: 20),
        separatorBuilder: (context, index) {
          return const SizedBox(width: 20);
        },
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: Provider.of<ArticlesController>(context, listen: false)
            .articles
            .length,
        itemBuilder: (context, index) {
          return SquareCard(
              img: "${imgs[index]['img']}",
              title: "${imgs[index]['title']}",
              article: Provider.of<ArticlesController>(context, listen: false)
                  .articles[index]);
        },
      ),
    );
  }
}
