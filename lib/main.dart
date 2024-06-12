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
  List<Widget> answerResult = [
    Padding(
      padding: const EdgeInsets.all(3.0),
      child: Icon(
        Icons.thumb_up,
        color: Colors.green,
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(3.0),
      child: Icon(
        Icons.thumb_down,
        color: Colors.red,
      ),
    ),
  ];

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
                Image.asset("images/image-1.jpg"),
                SizedBox(height: 20.0),
                Text(
                  "عدد الكواكب في المجموعة الشمسية هو ثمانية كواكب",
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
                setState(() {
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
                setState(() {
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
//test github