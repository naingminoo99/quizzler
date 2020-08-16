import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'question.dart';

class QuizBrain {
  int _questionNo = 0;
  List<Question> _questions = [
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('Google was originally called \"Backrub\".', true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
    Question('People now a days are dumb', true),
    Question('social media can improve peoples live', false),
    Question('racism is mainstream now', true),
    Question('People care about each other', false),
    Question('US is a good place', false),
    Question('Donald Trump is a fucking idiot', true),
    Question('Programming is fun', true),
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
  ];

  String getQuestion() {
    return _questions[_questionNo].question;
  }

  bool getAnswer() {
    return _questions[_questionNo].answer;
  }

  void nextQuestion() {
    if (_questionNo < _questions.length - 1) {
      _questionNo++;
    } else {}
  }

  bool isFinished() {
    if (_questionNo >= _questions.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  int totalq() {
    return _questions.length + 1;
  }

  void reset() {
    _questionNo = 0;
  }
}
