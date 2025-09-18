import 'dart:math';

import 'package:flutter/material.dart';

import 'bmi_result.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool isMal = true;
  double rating = 180;
  int weight = 80;
  int age = 30;
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
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: isMal ? Color(0xffca3f4e) : Color(0xff161628),

                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMal = true;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.male, size: 70, color: Colors.white),
                            Text(
                              "Male",
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xff414351),
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
                          isMal = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: isMal ? Color(0xff161628) : Color(0xffca3f4e),

                          borderRadius: BorderRadius.circular(15),
                        ),

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            Icon(Icons.male, size: 70, color: Colors.white),
                            Text(
                              "Female",
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xff414351),
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
              padding: const EdgeInsets.all(20.0),
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
                      style: TextStyle(fontSize: 20, color: Color(0xff61616e)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          "${rating.toInt()}",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                        Text(
                          "cm",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff61616e),
                          ),
                        ),
                      ],
                    ),
                    Slider(
                      value: rating,
                      onChanged: (value) {
                        setState(() {
                          rating = value;
                        });
                      },
                      activeColor: Color(0xffffffff),
                      thumbColor: Color(0xffd93559),
                      inactiveColor: Color(0xff61616e),
                      min: 20,
                      max: 220,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xff151527),

                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "weight",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff414351),
                            ),
                          ),
                          Text(
                            "$weight",
                            style: TextStyle(fontSize: 50, color: Colors.white),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                child: Text("+"),
                              ),
                              SizedBox(width: 10),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                child: Text("-"),
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
                        mainAxisAlignment: MainAxisAlignment.start,

                        children: [
                          Text(
                            "age",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff414351),
                            ),
                          ),
                          Text(
                            "$age",
                            style: TextStyle(fontSize: 50, color: Colors.white),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {},
                                child: Text("+"),
                              ),
                              SizedBox(width: 10),
                              FloatingActionButton(
                                onPressed: () {},
                                child: Text("-"),
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
                double bmi = weight / pow(rating / 100, 2);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BmiResult(bmiResult: bmi),
                  ),
                );
              },
              child: Text(
                "CALCULATOR",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
