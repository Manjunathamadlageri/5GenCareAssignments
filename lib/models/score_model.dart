class Score {
  final String homeTeam;
  final String awayTeam;
  final int homeScore;
  final int awayScore;

  Score({
    required this.homeTeam,
    required this.awayTeam,
    required this.homeScore,
    required this.awayScore,
  });

  factory Score.fromJson(Map<String, dynamic> json) {
    return Score(
      homeTeam: json['home_team'],
      awayTeam: json['away_team'],
      homeScore: json['home_score'],
      awayScore: json['away_score'],
    );
  }
}
