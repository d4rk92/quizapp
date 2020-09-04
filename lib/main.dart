import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var questionIndex = 0;
  void answerQuestion() {
    questionIndex = questionIndex + 1;
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var questions = [
      'What\'s my name?',
      'Who am I?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text('answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('answer 2'),
              onPressed: () => print('answer 2 chosen!'),
            ),
            RaisedButton(
              child: Text('answer 3'),
              onPressed: () {
                //...
                print('answer 3 chosen!');
              },
            ),
          ],
        ),
      ),
    );
  }
}
