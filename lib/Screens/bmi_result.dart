import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
  double bmiResult;
  BmiResult({required this.bmiResult});

  String getReusltTxt() {
    if (bmiResult < 18.5) {
      return "Underweight";
    } else if (bmiResult >= 18.5 && bmiResult < 25) {
      return "Normal";
    } else if (bmiResult > 25 && bmiResult < 29.9) {
      return "Overweight";
    } else {
      return "Obese";
    }
  }

  String advice() {
    if (bmiResult < 18.5) {
      return "You have lower than normal body weight — try to eat a bit more and choose nutritious foods.";
    } else if (bmiResult >= 18.5 && bmiResult < 25) {
      return "You have a healthy body weight — keep up your good habits!";
    } else if (bmiResult > 25 && bmiResult < 29.9) {
      return "ou are above the normal weight — try regular exercise and a balanced diet";
    } else {
      return "Your weight is in the obesity range — seek medical advice and adopt a healthier lifestyle.";
    }
  }

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 15),
            child: Text(
              "Your Result",
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff1d1e30),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                          getReusltTxt(),
                          style: TextStyle(
                            color: bmiResult < 18.5
                                ? Colors.blue
                                : bmiResult >= 18.5 && bmiResult < 25
                                ? Colors.green
                                : bmiResult >= 18.5 && bmiResult < 25
                                ? Colors.yellow
                                : Colors.red,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      Expanded(
                        child: Text(
                          "${bmiResult.toStringAsFixed(1)}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            advice(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 60,
            child: MaterialButton(
              color: Color(0xffd93559),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Re-CALCULATE",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
