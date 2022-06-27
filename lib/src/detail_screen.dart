import 'package:flutter/material.dart';
import 'package:flutter_application/mock/mock_data.dart';

class DetailScreen extends StatelessWidget {
  String appbarTitle;

  DetailScreen({required this.appbarTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(appbarTitle),
          leading: IconButton(
            iconSize: 27,
            icon: const Icon(Icons.arrow_back_rounded),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: const Color.fromARGB(255, 23, 31, 76)),
    );
  }
}
