import 'package:flutter/material.dart';
import 'package:flutter_application/mock/mock_data.dart';
import 'package:flutter_application/src/about_us.dart';
import 'package:flutter_application/src/detail_screen.dart';
import 'package:flutter_application/src/favorite.dart';
import 'package:flutter_application/src/settings.dart';
import 'package:flutter_application/src/shopping_cart.dart';

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
        drawer: Drawer(
            child: ListView(
          children: [
            const UserAccountsDrawerHeader(
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 23, 31, 76)),
                accountName: Text(
                  "Ahmad Shakir",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text(
                  "ahmad.shakir@gmail.com",
                  style: TextStyle(fontSize: 14),
                ),
                currentAccountPicture: CircleAvatar(
                  child: Text(
                    "AS",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                )),
            InkWell(
              onTap: () {
               Navigator.pushNamed(context, "/favorite");
              },
              child: const ListTile(
                leading: Icon(Icons.favorite,
                    color: Color.fromARGB(255, 23, 31, 76)),
                title: Text(
                  "Favorite",
                  style: TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 23, 31, 76)),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/shoppingCart");
              },
              child: const ListTile(
                leading: Icon(Icons.shopping_cart_outlined,
                    color: Color.fromARGB(255, 23, 31, 76)),
                title: Text("Shopping Cart",
                    style: TextStyle(
                        fontSize: 16, color: Color.fromARGB(255, 23, 31, 76))),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/settings");
              },
              child: const ListTile(
                leading: Icon(Icons.settings,
                    color: Color.fromARGB(255, 23, 31, 76)),
                title: Text("Settings",
                    style: TextStyle(
                        fontSize: 16, color: Color.fromARGB(255, 23, 31, 76))),
              ),
            ),
            InkWell(
              onTap: () {
               Navigator.pushNamed(context, "/aboutUs");
              },
              child: const ListTile(
                leading:
                    Icon(Icons.person, color: Color.fromARGB(255, 23, 31, 76)),
                title: Text("About Us",
                    style: TextStyle(
                        fontSize: 16, color: Color.fromARGB(255, 23, 31, 76))),
              ),
            ),
          ],
        )),
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
