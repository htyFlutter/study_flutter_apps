import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 253, 245, 230),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsetsGeometry.symmetric(horizontal: 10)
                ),

                //1番上のやつ
                Expanded(
                  child: SafeArea(
                    bottom: false,
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 244, 167, 185),
                      ),
                      title: const Text(
                        "Runa, Let's Study!",
                        style: TextStyle(
                          color: Color.fromARGB(100, 179, 62, 92),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: const Text('Hello!今日も一歩ずつ進んでみよう!'),
                      trailing: CircleAvatar(
                        backgroundColor: Color.fromARGB(100, 211, 211, 211),
                        child: Icon(
                          Icons.favorite_border,
                          color: Color.fromARGB(100, 179, 62, 92),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            //ピンクの枠
            Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 25),
              child: Column(
                children: [
                  Container(
                    height: 350,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xFFF19BB3),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsGeometry.only(top: 50, bottom: 25),
                          child: Container(
                            height: 50,
                            width: 140,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.purpleAccent,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child:  Text(
                              "Today's Goal",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                       

                        const Text(
                          '今日やること :\n 公式を1分眺めるだけ！',
                          style: TextStyle(
                            color: Colors.deepPurpleAccent,
                            fontSize: 18
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 20),

                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white,
                          ),
                          child: Icon(Icons.coffee_sharp),
                        ),
                        const SizedBox(height: 30),

                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(180, 50),
                            backgroundColor: Colors.lightBlueAccent                          ),
                          onPressed: () {}, 
                          child: const Text(
                            'Start Studying',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            const SizedBox(height: 10),

            //二つの白い枠
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 160,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              const Icon(
                                Icons.access_alarm,
                                
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Study Streak',
                              
                              ),
                              const SizedBox(height: 10),
                              const Text('12days')
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 30),
                  Container(
                    height: 100,
                    width: 160,
                    decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      children: [
                        Column(
                            children: [
                              const Icon(
                                Icons.light,
                                
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'XP Gained',
                              
                              ),
                              const SizedBox(height: 10),
                              const Text('2,450'),
                          ],
                        ),     
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            
            //Next StepとView All
            Padding(
              padding:  EdgeInsetsGeometry.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Next Step',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Text(
                    'View All',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            //次やることの2つのコンテナ
            Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 25),
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: 360,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(35)
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(18),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.lightBlueAccent,
                                  borderRadius: BorderRadius.circular(100), 
                                ),
                                child: Icon(Icons.calculate),
                              ),
                              const SizedBox(width: 15),

                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Quadratic Functions',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text('Lv2・15mins'),
                                ],
                              ),
                              const SizedBox(width: 35),

                              Container(
                                height: 38,
                                width: 38,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    width: 3.0,
                                    color: Color(0xFFF19BB3),
                                  ),

                                  borderRadius: BorderRadius.circular(100)
                                ),
                                child: Icon(
                                  Icons.chevron_right,
                                  size: 25,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 25),
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: 360,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(35)
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(18),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.lightBlueAccent,
                                  borderRadius: BorderRadius.circular(100), 
                                ),
                                child: Icon(Icons.architecture),
                              ),
                              const SizedBox(width: 15),

                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Quadratic Functions',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text('Lv2・15mins'),
                                ],
                              ),
                              const SizedBox(width: 33),

                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    width: 3.0,
                                    color: Color(0xFFF19BB3),
                                  ),

                                  borderRadius: BorderRadius.circular(100)
                                ),
                                child: Icon(
                                  Icons.lock,
                                  size: 20,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ),
    );
  }
}
