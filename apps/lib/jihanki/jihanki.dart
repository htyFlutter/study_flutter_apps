import 'package:flutter/material.dart';

class Jihanki extends StatefulWidget {
  const Jihanki({super.key});

  @override
  State<Jihanki> createState() => _JihankiState();
}

class _JihankiState extends State<Jihanki> {
  int totalputinYen = 0;
  String costomerBoughtJuice = '';
  bool didCostomerBought = false;
  bool coustomerPutIn = false;

  void initstate() {
    super.initState();
  }

  void hundredYenPutIn() {
    setState(() {
      totalputinYen += 100;
      coustomerPutIn = true;
    });
  }

  void fiftyYenPutIn() {
    setState(() {
      totalputinYen += 50;
      coustomerPutIn = true;
    });
  }

  void cocaCokeNormalBought() {
    setState(() {
      totalputinYen -= 160;
      didCostomerBought = true;
    });
  }

  void cocaColaZeroBought() {
    setState(() {
      totalputinYen -= 160;
      didCostomerBought = true;
    });
  }

  void cocaColaTokuhoBought() {
    setState(() {
      totalputinYen -= 200;
      didCostomerBought = true;
    });
  }

  void moneyless() {
    if (totalputinYen < 0) {
      const Text(
        'お金が足りません。',
        style: TextStyle(fontSize: 30, color: Colors.redAccent),
      );
      didCostomerBought = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'コカコーラ専用自販機へようこそ！',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(double.infinity, 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: Colors.red,
                ),

                onPressed: () {
                  if (totalputinYen <= 0) {
                    const Text('お金が足りません。');
                    moneyless();
                  } else {
                    cocaCokeNormalBought();
                  }
                },
                child: const Text(
                  'コーラノーマル: 160円',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(double.infinity, 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: Colors.black,
                ),
                onPressed: () {
                  if (totalputinYen <= 0) {
                     const Text('お金が足りません。');
                    moneyless();
                  } else {
                    cocaColaZeroBought();
                  }
                },
                child: const Text(
                  'コカコーラゼロ: 160円',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(double.infinity, 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: Colors.white,
                ),
                onPressed: () {
                  if (totalputinYen <= 0) {
                    const Text('お金が足りません。');
                    moneyless();
                  } else {
                    cocaColaTokuhoBought();
                  }
                },
                child: const Text(
                  'トクホコカコーラ: 200円',
                  style: TextStyle(color: Colors.red),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  hundredYenPutIn();
                },
                child: Text('100円投入', style: TextStyle(color: Colors.grey)),
              ),
              SizedBox(height: 20, width: 10),
              ElevatedButton(
                onPressed: () {
                  fiftyYenPutIn();
                },
                child: Text('50円投入', style: TextStyle(color: Colors.blueGrey)),
              ),
            ],
          ),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(double.infinity, 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {},
              child: const Text('おつりを出す'),
            ),
          ),
        ],
      ),
    );
  }
}
