import 'package:flutter/material.dart';
import 'package:flutter_application/mock/mock_data.dart';

class DetailScreen extends StatelessWidget {
  String appbarTitle;
  String imageUrlDetail;
  String title;
  String description;
  String color;
  String made;
  String price;

  DetailScreen(
      {required this.appbarTitle,
      required this.imageUrlDetail,
      required this.title,
      required this.description,
      required this.color,
      required this.made,
      required this.price});

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
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
              decoration: BoxDecoration(border: Border.all(width: 5)),
              // height: 350,
              child: Image.network(
                imageUrlDetail,
                fit: BoxFit.fill,
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10 , top: 10 , left: 10 , right: 10),
          child: Center(
              child: Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          )),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            description,
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            "Color : ${color}",
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            "Made in : ${made}",
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            "Price : ${price}",
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
          ),
        ),
      ]),
    );
  }
}
