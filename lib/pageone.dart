import 'package:flutter/material.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("example fetch data from interent"),
        backgroundColor: Colors.pink,
      ),
      body: Container(
        color: Colors.pink.shade100,
      ),
    );
  }
}