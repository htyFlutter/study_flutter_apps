import 'package:flutter/material.dart';
import 'dart:math';

class AnimationApps extends StatefulWidget {
  final int seconds;

  const AnimationApps({super.key, required this.seconds});

  @override
  State<AnimationApps> createState() => _AnimationAppsState();
}

class _AnimationAppsState extends State<AnimationApps>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  late Animation<double> _animation;

  bool qAndASwitch = false;

  void turnOnOffSwitch() {
    setState(() {
      if (qAndASwitch == true) {
        qAndASwitch = false;
        _controller.reverse();
      } else {
        qAndASwitch = true;
        _controller.forward();
      }
    });
  }

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: Duration(seconds: widget.seconds),
      vsync: this,
    );

    _animation = Tween<double>(begin: 0.0, end: pi).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('math_test'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            turnOnOffSwitch();
          },
          child: Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..rotateY(_animation.value),
            child: SizedBox(
              width: 350,
              height: 150,
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    qAndASwitch == true
                        ? const Text('x² + 4x + 4を因数分解すると？')
                        : const Text('(x + 2)²'),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        turnOnOffSwitch();
                      },
                      child: const Text('Quiz'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
