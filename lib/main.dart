import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var _questions = [
      'Whats\'s your fav color?',
      'What\'s your fav animal?',
      'What\'s your fav food?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(_questions[_questionIndex]),
              ElevatedButton(
                onPressed: answerQuestion,
                child: Text('Answer 1'),
              ),
              ElevatedButton(
                onPressed: answerQuestion,
                child: Text('Answer 2'),
              ),
              ElevatedButton(
                onPressed: answerQuestion,
                child: Text('Answer 3'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
