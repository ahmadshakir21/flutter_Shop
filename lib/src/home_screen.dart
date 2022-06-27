import 'package:flutter/material.dart';
import 'package:flutter_application/mock/mock_data.dart';
import 'package:flutter_application/src/detail_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  IconData iconFavorite = Icons.favorite_border;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
            title: const Text("Shop App"),
            backgroundColor: const Color.fromARGB(255, 23, 31, 76)),
        body: GridView.builder(
            itemCount: myData.length,
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 20, crossAxisSpacing: 20),
            itemBuilder: (context, index) => Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DetailScreen(
                              appbarTitle:
                                  myData[index]["itemName"].toString()),
                        ));
                      },
                      child: Container(
                          decoration:
                              BoxDecoration(border: Border.all(width: 3)),
                          height: 350,
                          child: Image.network(
                            myData[index]["imageUrl"].toString(),
                            fit: BoxFit.fill,
                          )),
                    ),
                    Container(
                      color: const Color.fromARGB(255, 23, 31, 76),
                      height: 35,
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                iconFavorite =
                                    iconFavorite == Icons.favorite_border
                                        ? Icons.favorite
                                        : Icons.favorite_border;
                              });
                            },
                            icon: Icon(iconFavorite),
                            color: Colors.amber,
                          ),
                          Expanded(
                            child: Center(
                              child: Text(
                                myData[index]["itemName"].toString(),
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.amber),
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.shopping_cart_outlined),
                            color: Colors.amber,
                          )
                        ],
                      ),
                    )
                  ],
                )));
  }
}
