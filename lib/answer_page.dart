import 'package:covid19quiz/main.dart';
import 'package:flutter/material.dart';

class AnswerPage extends StatefulWidget {
  AnswerPage(this.counter, {Key key}) : super(key: key);

  final int counter;

  @override
  _AnswerPage createState() => _AnswerPage();
}

class _AnswerPage extends State<AnswerPage> {
  int _incrementCounter() {
    int correctCounter = widget.counter + 1;
    return correctCounter;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '正解は３問中${widget.counter}問でした！！',
                style: TextStyle(fontSize: 20),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: RaisedButton(
                    child: Text('もう一度ゲームをする'),
                    onPressed: () {
                      //次の問題への画面遷移
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyHomePage()));
                    }),
              ),
            ]),
      ),
    );
  }
}
