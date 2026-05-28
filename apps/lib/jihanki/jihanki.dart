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
  String errorMessage = '';

  @override
  void initState() {
    super.initState();
  }

  //100円を入れる
  void hundredYenPutIn() {
    setState(() {
      totalputinYen += 100;
      coustomerPutIn = true;
    });
  }

  //50円を入れる
  void fiftyYenPutIn() {
    setState(() {
      totalputinYen += 50;
      coustomerPutIn = true;
      errorMessage = '';
    });
  }

  //コカコーラ（砂糖入り）を買う関数
  void cocaCokeNormalBought() {
    setState(() {
      totalputinYen -= 160;
      didCostomerBought = true;
    });
  }

  //コカコーラゼロを買う関数
  void cocaColaZeroBought() {
    setState(() {
      totalputinYen -= 160;
      didCostomerBought = true;
    });
  }

  //コカコーラトクホを買う関数
  void cocaColaTokuhoBought() {
    setState(() {
      totalputinYen -= 200;
      didCostomerBought = true;
    });
  }

  void moneyless() {
    if (totalputinYen < 0) {
      errorMessage = 'お金が足りません。';
      didCostomerBought = false;
    }
  }

  //お釣りを出す
  void oturiout() {
    if (totalputinYen > 0) {
      setState(() {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('お釣り返却💰', textAlign: TextAlign.center),
              content: Text('お釣り$totalputinYen円です。'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('確認'),
                ),
              ],
            );
          },
        );

        totalputinYen = 0;
        errorMessage = '';
      });
    }
  }

  //自販機のお金をを入れる時からコーラを受け取るまでの流れ
  //上の看板
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

      //自販機の配置
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //商品のボタン
          Column(
            children: [
              Text('現在の投入額: $totalputinYen円', style: TextStyle(fontSize: 30)),
              SizedBox(height: 20),

              if (errorMessage.isNotEmpty)
                Text(
                  errorMessage,
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              const SizedBox(height: 20),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: Colors.red,
                ),

                onPressed: () {
                  if (totalputinYen >= 160) {
                    cocaCokeNormalBought();
                    errorMessage = '';
                  } else {
                    setState(() {
                      errorMessage = 'お金が足りません。';
                    });
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
                  if (totalputinYen >= 160) {
                    cocaColaZeroBought();
                    errorMessage = '';
                  } else {
                    setState(() {
                      errorMessage = 'お金が足りません。';
                    });
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
                  if (totalputinYen >= 200) {
                    cocaColaTokuhoBought();
                    errorMessage = '';
                  } else {
                    setState(() {
                      errorMessage = 'お金が足りません。';
                    });
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

          //お金を入れるボタン
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

          //お釣りを出す
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: oturiout,
              child: const Text('おつりを出す'),
            ),
          ),
        ],
      ),
    );
  }
}
