import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Us"),
        backgroundColor: const Color.fromARGB(255, 23, 31, 76),
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                "My name is Ahmad Shakir Khalid , i'm 22 years old and i graduated salahaddin university - college of engineering - software & informatics department. If you want to contact me you will find me at : ",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: 10,),
            ListTile(
              leading: FaIcon(
                FontAwesomeIcons.facebook,
                size: 30,
                color: Color.fromARGB(255, 23, 31, 76),
              ),
              title: Text(
                "Ahmad Shakir",
                style: TextStyle(fontSize: 16.5, fontWeight: FontWeight.w500),
              ),
            ),

            ListTile(
              leading: FaIcon(
                FontAwesomeIcons.twitter,
                size: 30,
                color: Color.fromARGB(255, 23, 31, 76),
              ),
              title: Text(
                "@ahmadshakir21",
                style: TextStyle(fontSize: 16.5, fontWeight: FontWeight.w500),
              ),
            ),

            ListTile(
              leading: FaIcon(
                FontAwesomeIcons.github,
                size: 30,
                color: Color.fromARGB(255, 23, 31, 76),
              ),
              title: Text(
                "/ahmadshakir21",
                style: TextStyle(fontSize: 16.5, fontWeight: FontWeight.w500),
              ),
            ),

            ListTile(
              leading: FaIcon(
                FontAwesomeIcons.linkedin,
                size: 30,
                color: Color.fromARGB(255, 23, 31, 76),
              ),
              title: Text(
                "Ahmad Shakir",
                style: TextStyle(fontSize: 16.5, fontWeight: FontWeight.w500),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
