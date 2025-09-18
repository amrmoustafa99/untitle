import 'dart:math';

import 'package:flutter/material.dart';

class BMIScreen extends StatefulWidget {
  const BMIScreen({super.key});

  @override
  State<BMIScreen> createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {
  bool isMale = true;
  Color color = Color(0xff151527);
  double height = 150;
  int weight = 60;
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000022),
      appBar: AppBar(
        backgroundColor: Color(0xff000022),
        centerTitle: true,
        title: Text("BMI CALCULATOR", style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: isMale ? Color(0xffd73558) : Color(0xff151527),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.male, size: 60, color: Colors.white),
                            SizedBox(height: 10),
                            Text(
                              "MALE",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: isMale ? Color(0xff151527) : Color(0xffd73558),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.female, size: 60, color: Colors.white),
                            SizedBox(height: 10),
                            Text(
                              "FEMALE",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff151527),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "HEIGHT",
                      style: TextStyle(color: Color(0xff494957), fontSize: 20),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          "${height.toInt()}",
                          style: TextStyle(color: Colors.white, fontSize: 50),
                        ),
                        Text("cm", style: TextStyle(color: Color(0xff494957))),
                      ],
                    ),
                    SizedBox(height: 10),
                    Slider(
                      value: height,
                      onChanged: (value) {
                        setState(() {
                          height = value;
                        });
                      },
                      min: 40,
                      max: 220,
                      activeColor: Color(0xffffffff),
                      thumbColor: Color(0xffb02e4e),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xff151527),
                        borderRadius: BorderRadius.circular(15),
                      ),

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "WEIGHT",
                            style: TextStyle(
                              color: Color(0xff494957),
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "$weight",
                            style: TextStyle(color: Colors.white, fontSize: 50),
                          ),
                          SizedBox(height: 10),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                child: Text(
                                  "+",
                                  style: TextStyle(fontSize: 25),
                                ),
                              ),
                              SizedBox(width: 10),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                child: Text(
                                  "-",
                                  style: TextStyle(fontSize: 25),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xff151527),
                        borderRadius: BorderRadius.circular(15),
                      ),

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "AGE",
                            style: TextStyle(
                              color: Color(0xff494957),
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "$age",
                            style: TextStyle(color: Colors.white, fontSize: 50),
                          ),
                          SizedBox(height: 10),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                child: Text(
                                  "+",
                                  style: TextStyle(fontSize: 25),
                                ),
                              ),
                              SizedBox(width: 10),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                child: Text(
                                  "-",
                                  style: TextStyle(fontSize: 25),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 60,
            child: MaterialButton(
              color: Color(0xffd93559),
              onPressed: () {
                double bmi = weight / pow(height / 100, 2);
                print(bmi);
              },
              child: Text(
                "CALCULATE",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
