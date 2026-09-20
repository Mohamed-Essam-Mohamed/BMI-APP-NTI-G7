import 'package:bmi_app/model/bmi_model.dart';
import 'package:bmi_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context)?.settings.arguments as BMIModel;
    return Scaffold(
      appBar: AppBar(title: Text("BMI Calculator")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
        child: Column(
          crossAxisAlignment: .start,
          spacing: 25,
          children: [
            Text(
              "Your Result",
              style: TextStyle(
                fontSize: 40,
                fontWeight: .bold,
                color: Colors.white,
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 35),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff333244),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 60),
                    Text(
                      arg.resultBmi,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: .bold,
                        color: arg.categoryColor,
                      ),
                    ),
                    SizedBox(height: 30),

                    Text(
                      arg.calculateBmi.toString(),
                      style: TextStyle(
                        fontSize: 64,
                        fontWeight: .bold,
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                    SizedBox(height: 60),

                    Text(
                      arg.healthAdvice,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: .w500,
                        color: Color(0xff8B8C9E),
                      ),
                      textAlign: .center,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: MaterialButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        color: Color(0xff3D81E8),
        padding: EdgeInsets.symmetric(vertical: 30),
        child: Text(
          "Re - Calculate",
          style: TextStyle(
            fontSize: 32,
            fontWeight: .w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
