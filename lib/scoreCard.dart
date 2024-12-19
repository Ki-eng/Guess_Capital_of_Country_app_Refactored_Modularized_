import 'package:flutter/material.dart';
import 'customCard.dart';

class Scorecard extends StatelessWidget {
  Scorecard({required this.score, required this.totalAttempted});

  int score;
  int totalAttempted;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Customcard(
      elevation: 10,
      shadowColor: Colors.grey,
      headingWidget: Text('SCORE  ${score}/${totalAttempted}',
          style: theme.textTheme.headlineMedium),
    );
  }
}
