import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double topPosition = MediaQuery.of(context).size.height * 0.2;
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Positioned(
                top: topPosition,
                left: 0,
                right: 0,
                child: Container(
                  height: 150, // Fixed height of 100, adjust as needed
                ),
              ),
              Image.asset(
                "assets/images/1.png",
                width: 150,
                height: 150,
              ),
              Container(
                height: 10,
              ),
              Text(
                '29°',
                style: TextStyle(fontSize: 40),
              )
            ],
          ),
        ),
      ),
    );
  }
}
