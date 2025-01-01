import 'customButton.dart';
import 'customCard.dart';
import 'package:flutter/material.dart';
import 'countries.dart';
import 'quiz.dart';
import 'utils.dart';
import 'scoreCard.dart';

class GuessCountry extends StatefulWidget {
  const GuessCountry({super.key});

  @override
  State<GuessCountry> createState() => _GuessCountryState();
}

class _GuessCountryState extends State<GuessCountry> {
  Quiz quizScoreCard = Quiz();
  bool showAnswer = false;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.indigo,
        title: Text(
          'Guess The Capital of Country',
          style: theme.textTheme.headlineLarge,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // backgroundColor: Colors.indigo,
        onPressed: resetQuiz,
        child: Text(
          'Reset',
          style: TextStyle(color: Colors.white),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Scorecard(
              score: quizScoreCard.score,
              totalAttempted: quizScoreCard.totalAttempted,
            ),
            Customcard(
              onPress: handleShowAnswer,
              elevation: 10,
              height: 200,
              shadowColor: Colors.grey,
              //backgroundColor: Colors.amberAccent,
              headingWidget: Text(
                showAnswer ? 'CAPITAL' : 'COUNTRY',
                style: theme.textTheme.headlineMedium,
              ),
              bodyWidget: Text(
                showAnswer
                    ? countries[quizScoreCard.totalAttempted]['capital']!
                    : countries[quizScoreCard.totalAttempted]['name']!,
                style: theme.textTheme.headlineMedium,
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomButton(
                onPress: handleShowAnswer,
                title: 'SHOW ${showAnswer ? 'QUESTION' : 'ANSWER'}',
                backgroundColor: Colors.indigo,
              )
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomButton(
                  onPress: markAnswerCorrect,
                  title: 'CORRECT',
                  backgroundColor: Colors.green,
                ),
                CustomButton(
                  onPress: markAnswerWrong,
                  title: 'INCORRECT',
                  backgroundColor: Colors.red,
                )
              ],
            )
          ]),
    );
  }

  void handleShowAnswer() {
    setState(() {
      showAnswer = !showAnswer;
    });
  }

  void markAnswerWrong() {
    setState(() {
      if (quizScoreCard.totalAttempted < countries.length - 1) {
        quizScoreCard.wrongAnswer();
      } else {
        showEndOfListAlert(context);
      }
    });
  }

  void markAnswerCorrect() {
    setState(() {
      if (quizScoreCard.totalAttempted < countries.length - 1) {
        quizScoreCard.correctAnswer();
      } else {
        showEndOfListAlert(context);
      }
    });
  }

  void resetQuiz() {
    setState(() {
      quizScoreCard.resetQuiz();
    });
  }
}
