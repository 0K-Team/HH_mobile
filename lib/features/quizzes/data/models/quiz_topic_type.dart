enum QuizTopicType {
  rainforest('assets/rainforest.png'),
  unknown(''),
  ;

  final String asset;

  const QuizTopicType(this.asset);

  String get localized {
    return switch (this) {
      QuizTopicType.rainforest => 'Las deszczowy',
      QuizTopicType.unknown => 'Błąd',
    };
  }
}
