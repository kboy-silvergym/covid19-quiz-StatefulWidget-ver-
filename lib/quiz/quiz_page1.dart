import 'package:covid19quiz/quiz/quiz_page2.dart';
import 'package:flutter/material.dart';

class QuizPage1 extends StatelessWidget {
  QuizPage1(this.counter);
  int counter;

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
                  child: Text('Q2　新型コロナはどのように感染する？'),
                ),
                OutlineButton(
                  child: Text('飛沫感染'),
                  onPressed: () {
                    //正解か不正解かのコード
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
                                counter++;
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => QuizPage2(counter),
                                    ));
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
                OutlineButton(
                  child: Text('空気感染'),
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
                                      builder: (context) => QuizPage2(counter),
                                    ));
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
                OutlineButton(
                  child: Text('接触感染'),
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
                                            QuizPage2(counter)));
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
                OutlineButton(
                  child: Text('母子感染'),
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
                                            QuizPage2(counter)));
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
