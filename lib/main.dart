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
  List<String> questions = [
    "عدد الكواكب في المجموعة الشمسية هو ثمانية كواكب",
    "القطط هي حيوانات لاحمة",
    "الصين موجودة في القارة الافريقية",
    "الارض مسطحة وليست كروية",
  ];
  List<String> questionImage = [
    "images/image-1.jpg",
    "images/image-2.jpg",
    "images/image-3.jpg",
    "images/image-4.jpg",
  ];
  List<bool> answers = [
    true,
    true,
    false,
    false,
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
                Image.asset(questionImage[questionNumber]),
                SizedBox(height: 20.0),
                Text(
                  questions[questionNumber],
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
                bool coorectAnswer = answers[questionNumber];
                if (coorectAnswer == true) {
                  print("الاجابة صحيحة");
                } else {
                  print("الاجابة خاطئة");
                }
                setState(() {
                  questionNumber = questionNumber + 1;
                  answerResult.add(
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Icon(
                        Icons.thumb_up,
                        color: Colors.green,
                      ),
                    ),
                  );
                });
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
                bool coorectAnswer = answers[questionNumber];
                if (coorectAnswer == false) {
                  print("الاجابة صحيحة");
                } else {
                  print("الاجابة خاطئة");
                }
                setState(() {
                  questionNumber++;
                  answerResult.add(
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Icon(
                        Icons.thumb_down,
                        color: Colors.red,
                      ),
                    ),
                  );
                });
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
