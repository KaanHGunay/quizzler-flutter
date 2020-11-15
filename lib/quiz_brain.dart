import 'package:quizzler/question.dart';

class QuizBrain {

  int _index = 0;

  List<Question> _questions = [
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you '
            'are technically entitled to a state funeral, because the building'
            ' is considered too sacred a place.',
        true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal'
            ' is the African Elephant.',
        false),
    Question(
        'The total surface area of two human lungs is approximately 70 square'
            ' metres.',
        true),
    Question('Google was originally called \"Backrub\".', true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are'
            ' enough to kill a small dog.',
        true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your'
            ' car, you are free to take it home to eat.',
        true),
  ];

  void nextQuestion() {
    if (_index < _questions.length - 1) {
      _index++;
    }
  }

  void resetGame() {
    _index = 0;
  }

  bool isLastQuestion() {
    return _index == (_questions.length - 1);
  }

  String getQuestionText() {
    return _questions[_index].question;
  }

  int getQuestionsLength() {
    return _questions.length;
  }

  bool getQuestionAnswer() {
    return _questions[_index].answer;
  }
}
