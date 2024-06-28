import 'package:flutter/material.dart';
// Ensure these imports match your project structure
import 'package:weather_application/function/drawer.dart';
import 'package:weather_application/function/harizontal_scroll.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double topPosition = 0;

  List<String> postImage = [
    'assets/city/1.png',
    'assets/city/2.png',
    'assets/city/3.png',
    'assets/city/4.png',
    'assets/city/5.png',
    'assets/city/6.png',
    // Add more asset paths as needed
  ];

  @override
  Widget build(BuildContext context) {
    // Calculate topPosition based on MediaQuery
    topPosition = MediaQuery.of(context).size.height * 0.1;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Aizawl'),
        ),
        drawer: DrawerStyle(),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: topPosition, // Adjust height as needed
                    color: Colors.transparent, // Adjust as needed
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
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                  Container(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text(
                        'Cloudy',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '29°/29° Feels like 29°',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 15,
                  ),
                  SizedBox(
                    height: 200, // Set the height of the horizontal list
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.all(8),
                      itemCount: postImage.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          child: Image.asset(
                            postImage[index],
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
