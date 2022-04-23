// ignore: file_names

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("GeeksForGeeks")),
      body: const Center(
          child: Text(
        "Home pagese",
        textScaleFactor: 2,
      )),
    );
  }
}
