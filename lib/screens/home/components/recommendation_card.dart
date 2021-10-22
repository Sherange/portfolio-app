import 'package:flutter/material.dart';
import 'package:portfolio_app/models/recommendations.dart';
import '../../../constants.dart';

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({
    Key? key,
    required this.recommendation,
  }) : super(key: key);

  final Recommendation recommendation;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 180,
      padding: EdgeInsets.all(defaultPadding),
      color: secondryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            recommendation.name!,
            style: Theme.of(context).textTheme.subtitle1,
          ),
          Text(recommendation.source!),
          SizedBox(height: defaultPadding),
          Text(
            recommendation.text!,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          )
        ],
      ),
    );
  }
}
