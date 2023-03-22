import 'package:flutter/material.dart';
import 'dart:math';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  int leftimage = 1;
  int rightimage = 1;

  void tap() {
    setState(() {
      leftimage = Random().nextInt(6);
      rightimage = Random().nextInt(6);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 189, 137, 94),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 59, 30, 7),
        title: Text(
          "Tap Me",
          style: TextStyle(
            fontFamily: 'Pacifico',
            fontWeight: FontWeight.bold,
            fontSize: 40.0,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onDoubleTap: tap,
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Image(
                        image: AssetImage("images/f$leftimage.jpg"),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onDoubleTap: tap,
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Image(
                        image: AssetImage("images/d$rightimage.jpg"),
                      ),
                    ),
                  ),
                )
              ],
            ),
            ElevatedButton(
              onPressed: tap,
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 59, 30, 7),
              ),
              child: const Text(
                "HERE",
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            )
          ]),
        ),
),
);
}
}
