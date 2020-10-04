import 'package:covid19quiz/quiz/quiz_page1.dart';
import 'package:flutter/material.dart';

class QuizPage0 extends StatefulWidget {
  QuizPage0(this.counter);

  final int counter;

  @override
  _QuizPage0State createState() => _QuizPage0State();
}

class _QuizPage0State extends State<QuizPage0> {
  int _incrementCounter() {
    int correctCounter = widget.counter + 1;
    return correctCounter;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text('Q1　新型コロナはどこで初めて発生した？'),
                ),
                OutlineButton(
                  child: Text('日本'),
                  onPressed: () {
                    //正解か不正解かのコード
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('不正解！'),
                          actions: <Widget>[
                            FlatButton(
                                child: Text('次の問題へ'),
                                onPressed: () {
                                  //次の問題への画面遷移
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              QuizPage1(widget.counter)));
                                }),
                          ],
                        );
                      },
                    );
                  },
                ),
                OutlineButton(
                  child: Text('中国'),
                  onPressed: () {
                    //正解か不正解かのコード
                    //押すと数字が増えるコード
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('正解！'),
                          actions: <Widget>[
                            FlatButton(
                              child: Text('次の問題へ'),
                              onPressed: () {
                                //次の問題への画面遷移
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            QuizPage1(_incrementCounter())));
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
                OutlineButton(
                  child: Text('アメリカ'),
                  onPressed: () {
                    //正解か不正解かのコード
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('不正解！'),
                          actions: <Widget>[
                            FlatButton(
                              child: Text('次の問題へ'),
                              onPressed: () {
                                //次の問題への画面遷移
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            QuizPage1(widget.counter)));
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
                OutlineButton(
                  child: Text('韓国'),
                  onPressed: () {
                    //正解か不正解かのコード
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('不正解！'),
                          actions: <Widget>[
                            FlatButton(
                              child: Text('次の問題へ'),
                              onPressed: () {
                                //次の問題への画面遷移
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            QuizPage1(widget.counter)));
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ]),
        ),
      ),
    );
  }
}
