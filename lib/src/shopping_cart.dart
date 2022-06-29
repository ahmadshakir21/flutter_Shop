import 'package:flutter/material.dart';

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: const Text("Shopping Cart") , backgroundColor: const Color.fromARGB(255, 23, 31, 76),),
    );
  }
}