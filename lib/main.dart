import 'package:ekhtibar_app/question.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ExamApp());
}

class ExamApp extends StatelessWidget {
  const ExamApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text('اختبار'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: const ExamPage(),
        ),
      ),
    );
  }
}

class ExamPage extends StatefulWidget {
  const ExamPage({super.key});

  @override
  State<ExamPage> createState() => _ExamPageState();
}

class _ExamPageState extends State<ExamPage> {
  List<Widget> answerResult = [];

  void checkAnswer(bool whatUserPicked) {
    bool coorectAnswer = questionGroup[questionNumber].questionAnswer;
    setState(() {
    if (coorectAnswer == whatUserPicked) {
      answerResult.add(
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Icon(
                        Icons.thumb_up,
                        color: Colors.green,
                      ),
                    ),
                  );
    } else {
       answerResult.add(
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Icon(
                        Icons.thumb_down,
                        color: Colors.red,
                      ),
                    ),
                  );
    }
     
                  questionNumber = questionNumber + 1;
                  
                });
  }

  List<Question> questionGroup = [
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
        q: "الحيواناتلا تشعر بالالم",
        i: "images/image-7.jpg",
        a: false),
    
  ];

  

  int questionNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: answerResult,
        ),
        Expanded(
            flex: 5,
            child: Column(
              children: [
                Image.asset(questionGroup[questionNumber].questionImage),
                SizedBox(height: 20.0),
                Text(
                  questionGroup[questionNumber].questionText,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24.0,
                  ),
                ),
              ],
            )),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: TextButton(
              child: Text(
                "صح",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                checkAnswer(true);
               
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.indigo, // لون الخلفية
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: TextButton(
              child: Text(
                "خطاء",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                checkAnswer(false);
                
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.deepOrange, // لون الخلفية
              ),
            ),
          ),
        ),
      ],
    );
  }
}
