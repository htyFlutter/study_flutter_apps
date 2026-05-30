import 'package:flutter/material.dart';

class Duolingo extends StatefulWidget {
  const Duolingo({super.key});

  @override
  State<Duolingo> createState() => _DuolingoState();
}

class _DuolingoState extends State<Duolingo> {
  int totalStudiedDay = 0;
  List<bool> dayStamps = [false, false, false, false, false, false, false];

  void studiedDone(int index) {
    setState(() {
      dayStamps[index] = true;
      totalStudiedDay += 1;

      if (index == 6) {
        dayStamps = [false, false, false, false, false, false, false];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('すうがくスタンプ帳'),
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: Column(
        children: <Widget>[
          Text(
            '通算日数: $totalStudiedDay日',
            style: TextStyle(color: Colors.cyanAccent, fontSize: 18),
          ),
          if (totalStudiedDay == 0)
            const Text('0日だけど、大丈夫そ？', style: TextStyle(color: Colors.red)),
          const SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              dayStamps[0]
                  ? Icon(Icons.star, color: Colors.amber)
                  : Icon(Icons.circle, color: Colors.grey),
              dayStamps[1]
                  ? Icon(Icons.star, color: Colors.amber)
                  : Icon(Icons.circle, color: Colors.grey),
              dayStamps[2]
                  ? Icon(Icons.star, color: Colors.amber)
                  : Icon(Icons.circle, color: Colors.grey),
              dayStamps[3]
                  ? Icon(Icons.star, color: Colors.amber)
                  : Icon(Icons.circle, color: Colors.grey),
              dayStamps[4]
                  ? Icon(Icons.star, color: Colors.amber)
                  : Icon(Icons.circle, color: Colors.grey),
              dayStamps[5]
                  ? Icon(Icons.star, color: Colors.amber)
                  : Icon(Icons.circle, color: Colors.grey),
              dayStamps[6]
                  ? Icon(Icons.star, color: Colors.amber)
                  : Icon(Icons.circle, color: Colors.grey),
            ],
          ),

          const SizedBox(height: 20),

          ElevatedButton(
            onPressed: () {
              int stampsIndex = totalStudiedDay % 7;
              studiedDone(stampsIndex);
            },
            child: const Text('All Done!'),
          ),
        ],
      ),
    );
  }
}
