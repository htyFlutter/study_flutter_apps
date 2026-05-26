import 'package:flutter/material.dart';

class CounterApps extends StatefulWidget {
  const CounterApps({
    super.key,
    required this.title,
    required this.selectedQuizList,
  });

  final String title;
  final List<String> selectedQuizList;

  @override
  State<CounterApps> createState() => _CounterAppsState();
}

class _CounterAppsState extends State<CounterApps> {
  int _connectedCounter = 1;
  int _worngConter = 0;
  int _correctCounter = 0;
  bool _isCleared = false;
  bool _isGameOver = false;

  @override
  void initState() {
    super.initState();
  }

  void plusCounter() {
    setState(() {
      _correctCounter++;
      if (_connectedCounter == widget.selectedQuizList.length) {
        _isCleared = true;
      } else {
        _connectedCounter++;
      }
    });
  }

  void missCounter() {
    setState(() {
      _worngConter++;
      if (_worngConter == 5) {
        _isGameOver = true;
      } else {
        if (_connectedCounter == widget.selectedQuizList.length) {
          _isCleared = true;
        } else {
          _connectedCounter++;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.deepPurple, fontSize: 30),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (_isGameOver)
                  const Text(
                    'Game Over',
                    style: TextStyle(color: Colors.redAccent, fontSize: 30),
                  )
                else if (_isCleared)
                  Column(
                    children: [
                      const Text(
                        'Clear!',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                       Text(
                        '正解数: $_correctCounter問',
                        style: TextStyle(fontSize: 24, color: Colors.blueGrey),
                      ),
                       Text(
                        '不正解数: $_worngConter問',
                        style: TextStyle(fontSize: 24, color: Colors.blueGrey),
                      ),
                    ],
                  )
                else
                  Container(
                    constraints: const BoxConstraints(maxWidth: 300),
                    child: Text(
                      widget.selectedQuizList[_connectedCounter - 1],
                      style: const TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (_isGameOver || _isCleared)
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _connectedCounter = 1;
                        _worngConter = 0;
                        _isCleared = false;
                        _correctCounter = 0;
                        _isGameOver = false;
                        widget.selectedQuizList.shuffle();
                      });
                    },
                    child: const Text('もう一度遊ぶ🔁'),
                  )
                else ...[
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text(
                              'ファイナルアンサー？',
                              textAlign: TextAlign.center,
                            ),
                            content: const Text('あなたの答えは○です。これでよろしいですか？'),
                            actionsAlignment: MainAxisAlignment.center,
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  plusCounter();
                                },
                                child: const Text(
                                  'ファイナルアンサー！',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text(
                                  'ちょっと待って！',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: const Text(
                      '○',
                      style: TextStyle(color: Colors.green, fontSize: 20),
                    ),
                  ),
                  const SizedBox(width: 40),
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text(
                              'ファイナルアンサー？',
                              textAlign: TextAlign.center,
                            ),
                            actionsAlignment: MainAxisAlignment.center,
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  missCounter();
                                },
                                child: const Text(
                                  'ファイナルアンサー！',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text(
                                  'ちょっと待って！',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: const Text(
                      '×',
                      style: TextStyle(color: Colors.red, fontSize: 20),
                    ),
                  ),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }
}
