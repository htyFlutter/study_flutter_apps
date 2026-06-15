import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 227, 213),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: SafeArea(
                child: ListTile(
                  leading: const Text(
                    'Maison de Crème',
                    style: TextStyle(
                      color: Color.fromARGB(255, 110, 53, 69),
                      fontSize: 30,
                      letterSpacing: 0.01,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Padding(
                    padding: EdgeInsetsGeometry.only(bottom: 11),
                    child: Icon(
                      Icons.notifications_outlined,
                      color: Color.fromARGB(255, 110, 53, 69),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),

            Padding(
              padding: EdgeInsets.only(left: 25, bottom: 30),
              child: Row(
                children: [
                  CircleAvatar(backgroundColor: Colors.pink, radius: 40),
                  const SizedBox(width: 10),
                  Column(
                    children: [
                      Text(
                        'ゆなのカフェテラス',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.1,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            height: 25,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Colors.greenAccent,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Text(
                              'Green member',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text('Lv. 12 Math Learner'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Container(
                    height: 130,
                    width: 165,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 15, left: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('学習時間', textAlign: TextAlign.start),
                          const SizedBox(height: 36),
                          Padding(
                            padding: EdgeInsets.only(bottom: 15),
                            child: Row(
                              children: [
                                const SizedBox(height: 40),
                                Text('24.5', style: TextStyle(fontSize: 25)),
                                const SizedBox(width: 9),
                                const Text('時間'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Container(
                    height: 130,
                    width: 165,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 15, left: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('正解率', textAlign: TextAlign.start),
                          const SizedBox(height: 36),
                          Padding(
                            padding: EdgeInsets.only(bottom: 15),
                            child: Row(
                              children: [
                                const SizedBox(height: 40),
                                Text('24.5', style: TextStyle(fontSize: 25)),
                                const SizedBox(width: 9),
                                const Text('%'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 90,
                    width: double.infinity,
                    // 🔽 スイッチやアイコンが左右の端にペタッとくっつかないよう、内側に余白を作ります
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: Row(
                      // 🔽 横並びの中身を、縦方向に対して「完全に中央揃え」にします
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // 左側：アイコン
                        CircleAvatar(
                          backgroundColor: Colors.grey[350],
                          child: const Icon(Icons.light_mode_outlined),
                        ),
                        const SizedBox(width: 15), // アイコンと文字の間のすき間
                        // 中央：テキスト（残りの幅をすべて埋める）
                        Expanded(
                          child: Column(
                            // 🔽 2行のテキストを「縦方向の中央」かつ「左詰め」にします
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                '目に優しいダークモード',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(height: 2), // タイトルとサブタイトルのすき間
                              Text(
                                'Deep Cocoa & Soft Pink',
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),

                        // 右側：スイッチ
                        CupertinoSwitch(
                          value: _isDarkMode,
                          onChanged: (bool value) {
                            setState(() {
                              _isDarkMode = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    height: 90,
                    width: double.infinity,
                    // 🔽 スイッチやアイコンが左右の端にペタッとくっつかないよう、内側に余白を作ります
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: Row(
                      // 🔽 横並びの中身を、縦方向に対して「完全に中央揃え」にします
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // 左側：アイコン
                        CircleAvatar(
                          backgroundColor: Colors.grey[350],
                          child: const Icon(Icons.light_mode_outlined),
                        ),
                        const SizedBox(width: 15), // アイコンと文字の間のすき間
                        // 中央：テキスト（残りの幅をすべて埋める）
                        Expanded(
                          child: Column(
                            // 🔽 2行のテキストを「縦方向の中央」かつ「左詰め」にします
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                '目に優しいダークモード',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(height: 2), // タイトルとサブタイトルのすき間
                              Text(
                                'Deep Cocoa & Soft Pink',
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),

                        // 右側：スイッチ
                        CupertinoSwitch(
                          value: _isDarkMode,
                          onChanged: (bool value) {
                            setState(() {
                              _isDarkMode = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    height: 90,
                    width: double.infinity,
                    // 🔽 スイッチやアイコンが左右の端にペタッとくっつかないよう、内側に余白を作ります
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: Row(
                      // 🔽 横並びの中身を、縦方向に対して「完全に中央揃え」にします
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // 左側：アイコン
                        CircleAvatar(
                          backgroundColor: Colors.grey[350],
                          child: const Icon(Icons.light_mode_outlined),
                        ),
                        const SizedBox(width: 15), // アイコンと文字の間のすき間
                        // 中央：テキスト（残りの幅をすべて埋める）
                        Expanded(
                          child: Column(
                            // 🔽 2行のテキストを「縦方向の中央」かつ「左詰め」にします
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                '目に優しいダークモード',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(height: 2), // タイトルとサブタイトルのすき間
                              Text(
                                'Deep Cocoa & Soft Pink',
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
