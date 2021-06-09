import 'Questions.dart';

class QuizBank {
  int _questionNo = 0;
  List<Question> _allQuestions = [
    Question(q: 'Man united won fa cup in 2015', a: true),
    Question(q: 'Man united won ucl in 2010', a: false),
    Question(q: 'Man united won PL in 2014', a: false),
    Question(q: 'Man united won PL in 1999', a: true),
    Question(q: 'Rooney played for liverpool', a: false),
    Question(q: 'Ronaldo won Ballon D\'nor at man united', a: true),
    Question(q: 'Man united won treble in 1999/2000', a: true),
    Question(q: 'Man united won UCL by beating barcelona in final', a: false),
    Question(q: 'Man united won treble in 1999', a: true),
    Question(q: 'Man united is the best club in the world', a: true),
    Question(q: 'Man united is the best club in the world', a: true),
  ];

  void nextQuestion() {
    if (_questionNo < _allQuestions.length - 1) {
      _questionNo++;
    }
  }

  bool isFinished() {
    if (_questionNo >= _allQuestions.length - 2) {
      return true;
    } else {
      return false;
    }
  }

  void resetQuestions() {
    _questionNo = 0;
  }

  String GetQuestion() {
    return _allQuestions[_questionNo].questions;
  }

  bool GetAnswers() {
    return _allQuestions[_questionNo].answers;
  }
}
