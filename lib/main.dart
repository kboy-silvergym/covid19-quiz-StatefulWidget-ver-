import 'package:covid19quiz/quiz/quiz_page0.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'covid19 quiz',
      theme: ThemeData(),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = 0;

  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '新型コロナウイルス'
              'クイズ！！',
              style: TextStyle(fontSize: 20),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: RaisedButton(
                  child: Text('スタート'),
                  onPressed: () {
                    //ゲームが始まる遷移
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => QuizPage0(counter)),
                    );
                  },
                ),
              ),
            ),
          ]),
    ));
  }
}
