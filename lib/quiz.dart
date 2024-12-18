class Quiz {
  int _currentScore = 0;
  int _totalAttemted = 0;

  int get score => _currentScore;
  int get totalAttempted => _totalAttemted;

  void resetQuiz() {
    _currentScore = 0;
    _totalAttemted = 0;
  }

  void correctAnswer() {
    _currentScore++;
    _totalAttemted++;
  }

  void wrongAnswer() {
    _totalAttemted++;
  }
}
