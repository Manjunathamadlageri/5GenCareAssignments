// import 'package:football_scores_app/models/score_model.dart';
// import 'package:football_scores_app/providers/score_provider.dart';
// import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/providers/score_provider.dart';
import 'package:flutter_application_1/widgets/score_card.dart';
import 'package:provider/provider.dart';



class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Fetch scores using the provider
    final scoreProvider = Provider.of<ScoreProvider>(context);
    scoreProvider.fetchScores();

    return Scaffold(
      appBar: AppBar(
        title: Text('Football Scores'),
      ),
      body: Consumer<ScoreProvider>(
        builder: (context, provider, _) {
          if (provider.isLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (provider.hasError) {
            return Center(child: Text('Error fetching data'));
          } else {
            return ListView.builder(
              itemCount: provider.scores.length,
              itemBuilder: (context, index) {
                return ScoreCard(provider.scores[index]);
              },
            );
          }
        },
      ),
    );
  }
}
