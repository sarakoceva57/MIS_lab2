import 'package:flutter/material.dart';

import './clothes_question.dart';
import 'clothes_answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  void _iWasTapped() {
    setState(() {
      _questionIndex += 1;
    });
    print('I was tapped');
  }

  var questions = [
    {
      'question': "Select clothes ",
      'answer': [
        'Jeans',
        'Shirts',
        'Dresses',
      ],
    },
    {
      'question': "Select jeans",
      'answer': [
        'High waist',
        'Mid waist',
        'Skinny',
        'Mom jeans',
      ],
    },
    {
      'question': "Select high waist jeans",
      'answer': [
        'High rise wide leg cropped jeans',
        'super elastic trf jeggins',
        'relaxed fit jeans'
      ],
    },
  ];
  var _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(
        appBarTheme: AppBarTheme(color: Colors.green),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Lab2-186041"),
        ),
        body: Column(
          children: [
            ClothesQuestion(questions[_questionIndex]['question'] as String),
            ...(questions[_questionIndex]['answer'] as List<String>)
                .map((answer) {
              return ClothesAnswer(_iWasTapped, answer);
            }),
          ],
        ),
      ),
    );
  }
}
