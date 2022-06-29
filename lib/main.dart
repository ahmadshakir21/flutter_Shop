import 'package:flutter/material.dart';
import 'package:flutter_application/src/screens/about_us.dart';
import 'package:flutter_application/src/screens/favorite.dart';
import 'package:flutter_application/src/screens/home_screen.dart';
import 'package:flutter_application/src/screens/settings.dart';
import 'package:flutter_application/src/screens/shopping_cart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // String? appbarTitle;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomeScreen(),
      initialRoute: "/",
      routes: {
        "/": (context) => HomeScreen(),
        // "/detail": (context) => DetailScreen(appbarTitle: appbarTitle!),
        "/favorite": (context) => const Favorite(),
        "/shoppingCart": (context) => const ShoppingCart(),
        "/settings": (context) => const Settings(),
        "/aboutUs": (context) => const AboutUs() 
      },
    );
  }
}
