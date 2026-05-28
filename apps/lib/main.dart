import 'package:counter_apps/quiz/list_practice.dart';
import 'package:marquee/marquee.dart';
import 'package:counter_apps/jihanki/jihanki.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Many Kinds of Apps',
      theme: ThemeData(primaryColor: Colors.redAccent),
      home: MainNavigationScreen(),
    );
  }
}

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [const Jihanki(), const ListPractice()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            color: Colors.black,
            height: 30,
            child: Marquee(
              text: 'コカコータ専用自販機へようこそ！つめた〜いコーラ販売中！　お釣りボタンを押すと残高が表示されます。' ,
              style: const TextStyle(
                color: Colors.redAccent, 
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              scrollAxis: Axis.horizontal,
              crossAxisAlignment: CrossAxisAlignment.center,
              blankSpace: 50.0,
              velocity: 50.0,
              pauseAfterRound: const Duration(seconds: 3),
            ),
          ),

          BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.local_drink),
                label: '自販機',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.book),
                label: 'クイズ',
              ),
            ],
            type: BottomNavigationBarType.fixed,
          )
        ],
      ),
    );
  }
}
