import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/score_model.dart';
class ScoreCard extends StatelessWidget {
  final Score score;

  ScoreCard(this.score);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: ListTile(
        title: Text('${score.homeTeam} vs ${score.awayTeam}'),
        subtitle: Text('${score.homeScore} - ${score.awayScore}'),
      ),
    );
  }
}


