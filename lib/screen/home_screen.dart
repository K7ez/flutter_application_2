import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<String> foods = [
    "متابعة شرب الماء",
    "مهامي لليوم",
    "نظامي الغذائي",
    "نظامي الرياضي"
  ];

  final List<Color> bgColors = [
    Color.fromARGB(255, 200, 213, 245),
    Color.fromARGB(255, 154, 147, 189),
    Color.fromARGB(255, 231, 180, 216),
    Color.fromARGB(255, 244, 196, 183),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 254, 253, 248),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome, Kawthar",
                        style: TextStyle(fontSize: 20, color: Colors.black54),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Thursday, 8 Aug 2024",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  "assets/loooo.png",
                  height: 180,
                  width: 200,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Wrap(
                spacing: 20,
                runSpacing: 20,
                alignment: WrapAlignment.center,
                children: foods.asMap().entries.map((entry) {
                  int index = entry.key;
                  String food = entry.value;
                  return Container(
                    width: 550,
                    height: 100,
                    padding: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      color: bgColors[index],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/${food}.png",
                          width: 120,
                          height: 80,
                        ),
                        SizedBox(height: 10),
                        Text(
                          food,
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
            )
          ],
        ),
      ),
    );
  }
}
