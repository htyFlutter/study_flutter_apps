import 'package:flutter/material.dart';

class MathCard extends StatefulWidget {
  const MathCard({super.key});

  @override
  State<MathCard> createState() => _MathCardState();
}

class _MathCardState extends State<MathCard> {
  bool qandASwitch = false;

  void turnOnOffSwitch() {
    setState(() {
      if (qandASwitch == true) {
        qandASwitch = false;
      } else {
        qandASwitch = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('数学公式カード'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
        child: GestureDetector(
          child: SizedBox(
            width: 350,
            height: 150,
            child: Card(
              child: Column(
                children: [
                  qandASwitch == true ? const Text('x² + 4x + 4を因数分解すると？') : const Text('(x + 2)²'),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      turnOnOffSwitch();
                    },
                    child: const Text('因数分解クイズ'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
