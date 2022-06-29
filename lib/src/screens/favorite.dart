import 'package:flutter/material.dart';

class Favorite extends StatelessWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: const Text("Favorite") , backgroundColor: const Color.fromARGB(255, 23, 31, 76),),
    );
  }
}