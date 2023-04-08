import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questions = [
    "What\'s your favorite color?",
    "What\'s your favorite animal?"
  ];
  var questionIndex = 0;
  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(children: [
          Text(questions.elementAt(questionIndex)),
          ElevatedButton(
            child: Text("Answer 1"),
            onPressed: () => print("Answer2 Choosen"),
          ),
          ElevatedButton(
            child: Text("Answer 2"),
            onPressed: answerQuestion,
          ),
          ElevatedButton(
            child: Text("Answer 3"),
            onPressed: () {
              print("Answer3 Choosen");
            },
          ),
        ]),
      ),
    );
  }
}
