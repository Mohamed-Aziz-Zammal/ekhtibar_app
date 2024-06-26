

import 'package:ekhtibar_app/question.dart';

class AppBrain {
    
    int _questionNumber = 0;

    List<Question> _questionGroup = [
    Question(
        q: "عدد الكواكب في المجموعة الشمسية هو ثمانية كواكب",
        i: "images/image-1.jpg",
        a: true),
    Question(
      q: "القطط هي حيوانات لاحمة", 
      i: "images/image-2.jpg", 
      a: true),
    Question(
        q: "الصين موجودة في القارة الافريقية",
        i: "images/image-3.jpg",
        a: false),
    Question(
      q: "الارض مسطحة وليست كروية", 
      i: "images/image-4.jpg", 
      a: false),
    Question(
        q: "باستطاعة الانسان البقاء علي قيد الحياة بدون اكل اللحوم",
        i: "images/image-5.jpg",
        a: true),
    Question(
      q: "الشمس تدور حول الارض و الارض تدور حول القمر", 
      i: "images/image-6.jpg", 
      a: false),
    Question(
        q: "الحيوانات لا تشعر بالالم",
        i: "images/image-7.jpg",
        a: false),
    
  ];

  void nextQuestion() {
      if(_questionNumber < _questionGroup.length - 1){
        _questionNumber++;
      }
      
    }

  String getQuestionText(){
    return _questionGroup[_questionNumber].questionText;
  }
  String getQuestionImage( ){
    return _questionGroup[_questionNumber].questionImage;
  }

  bool getQuestionAnswer(){
    return _questionGroup[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionGroup.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset(){
    _questionNumber = 0;
  }
}