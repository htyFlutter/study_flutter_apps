import 'package:flutter/material.dart';

class UnitScreen extends StatefulWidget {
  const UnitScreen({super.key});

  @override
  State<UnitScreen> createState() => _UnitScreenState();
}

class _UnitScreenState extends State<UnitScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 238, 225),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.orangeAccent,
                    child: Icon(Icons.account_circle, size: 25),
                  ),
                  title: const Text(
                    'Soso Math',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 82, 31, 46),
                    ),
                  ),
                  trailing: Icon(
                    Icons.settings,
                    color: Color.fromARGB(255, 82, 31, 46),
                    size: 30,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 40,
                left: 15,
                right: 15,
                bottom: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Column(
                      children: [
                        Align(
                          alignment: AlignmentGeometry.centerLeft,
                          child: const Text(
                            '今月の限定メニュー',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 114, 90, 67),
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Align(
                          alignment: AlignmentGeometry.centerLeft,
                          child: const Text(
                            'Monthly Limited Menu',
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 60, left: 10, right: 10),
                    child: Container(
                      height: 430,
                      width: 360,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 25, left: 23),
                            child: Container(
                              height: 50,
                              width: 210,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 110, 53, 69),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Seasonal Selection',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 15),
                          Padding(
                            padding: EdgeInsets.only(left: 23),
                            child: Text(
                              '今週のターゲット : 三角関数(sin, cos, tan)\n',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),

                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Row(
                              children: [
                                Expanded(
                                  child: ListTile(
                                    leading: Icon(
                                      color: Color.fromARGB(255, 110, 53, 69),
                                      Icons.local_dining,
                                      size: 30,
                                    ),
                                    title: Text(
                                      'Trigonometry: Sine & Cosine',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                          Padding(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: Center(
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  fixedSize: Size(250, 60),
                                  backgroundColor: Color.fromARGB(
                                    255,
                                    110,
                                    53,
                                    69,
                                  ),
                                ),
                                child: const Text(
                                  '学習を始める',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        '定番メニュー',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w700,
                          color: Colors.brown,
                        ),
                      ),
                      const Text(
                        'Regular Menu',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 360,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: ListTile(
                              leading: CircleAvatar(
                                radius: 30,
                                child: Icon(
                                  Icons.bakery_dining_outlined,
                                  size: 30,
                                ),
                              ),
                              title: Text(
                                'にじかんすう',
                                style: TextStyle(fontSize: 18),
                              ),
                              subtitle: Row(
                                children: [
                                  Container(
                                    height: 25,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[350],
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Text(
                                      'level2',
                                      strutStyle: StrutStyle(fontSize: 18),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  const SizedBox(height: 5, width: 3),
                                  const Text('Quadratic Functions'),
                                ],
                              ),
                              trailing: Icon(Icons.chevron_right),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 360,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: ListTile(
                              leading: CircleAvatar(
                                radius: 30,
                                backgroundColor: const Color.fromARGB(255, 232, 129, 164),
                                child: Icon(
                                  Icons.coffee_outlined,
                                  size: 30,
                                ),
                              ),
                              title: Text(
                                'かくりつ',
                                style: TextStyle(fontSize: 18),
                              ),
                              subtitle: Row(
                                children: [
                                  Container(
                                    height: 25,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[350],
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Text(
                                      'level1',
                                      strutStyle: StrutStyle(fontSize: 18),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  const SizedBox(height: 5, width: 3),
                                  const Text('probability'),
                                ],
                              ),
                              trailing: Icon(Icons.chevron_right),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 360,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: ListTile(
                              leading: CircleAvatar(
                                radius: 30,
                                child: Icon(
                                  Icons.bakery_dining_outlined,
                                  size: 30,
                                ),
                              ),
                              title: Text(
                                'にじかんすう',
                                style: TextStyle(fontSize: 18),
                              ),
                              subtitle: Row(
                                children: [
                                  Container(
                                    height: 25,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[350],
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Text(
                                      'locked',
                                      strutStyle: StrutStyle(fontSize: 18),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  const SizedBox(height: 5, width: 3),
                                  const Text('Calculus'),
                                ],
                              ),
                              trailing: Icon(Icons.lock_outline),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
