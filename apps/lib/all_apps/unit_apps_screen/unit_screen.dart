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
      appBar: AppBar(
        title: const Text(
          'Soso Math', 
          style: TextStyle(color: Color.fromARGB(1, 115, 57, 73)),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.blue, Colors.purpleAccent]),
        ),
      ),
    );
  }
}
