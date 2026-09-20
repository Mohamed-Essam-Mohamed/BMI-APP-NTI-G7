import 'dart:developer';
import 'dart:math';

import 'package:bmi_app/model/bmi_model.dart';
import 'package:bmi_app/utils/route.dart';
import 'package:bmi_app/widgets/gender_selected.dart';
import 'package:bmi_app/widgets/info_details_user.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool valueSwitch = false;
  bool isMale = true;
  double sliderValue = 150;
  int weight = 55;
  int age = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 50,
        title: Text("BMI Calculator"),
        leading: Switch(
          value: valueSwitch,
          onChanged: (value) {
            valueSwitch = value;
            setState(() {});
          },
          activeColor: Color(0xff3D81E8),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          spacing: 25,
          children: [
            //! gender
            Expanded(
              child: Row(
                spacing: 10,
                children: [
                  GenderSelected(
                    isSelected: isMale,
                    image: "assets/icons/male-icon.png",
                    text: "Male",
                    onTap: () {
                      isMale = true;
                      setState(() {});
                    },
                  ),
                  GenderSelected(
                    isSelected: !isMale,
                    image: "assets/icons/female-icon.png",
                    text: "Female",
                    onTap: () {
                      isMale = false;
                      setState(() {});
                    },
                  ),
                ],
              ),
            ),
            //! Height
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).secondaryHeaderColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisAlignment: .spaceEvenly,
                  children: [
                    Text(
                      "Height",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),

                    Text.rich(
                      style: Theme.of(context).textTheme.labelLarge,
                      TextSpan(
                        children: [
                          TextSpan(text: sliderValue.round().toString()),
                          TextSpan(
                            text: "cm",
                            style: Theme.of(context).textTheme.bodySmall
                                ?.copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                    ),

                    Slider(
                      max: 200,
                      min: 35,
                      value: sliderValue,
                      onChanged: (value) {
                        sliderValue = value;
                        setState(() {});
                      },
                      activeColor: Theme.of(context).highlightColor,
                    ),
                  ],
                ),
              ),
            ),

            //! info user
            Expanded(
              child: Row(
                spacing: 10,
                children: [
                  InfoDetailsUser(
                    title: "Weight",
                    value: weight,
                    addClick: () {
                      if (weight <= 150) {
                        weight++;
                        setState(() {});
                      }
                    },
                    removeClick: () {
                      if (weight > 1) {
                        weight--;
                        setState(() {});
                      }
                    },
                  ),
                  InfoDetailsUser(
                    title: "Age",
                    value: age,
                    addClick: () {
                      if (age < 60) {
                        age++;
                        setState(() {});
                      }
                    },
                    removeClick: () {
                      if (age > 1) {
                        age--;
                        setState(() {});
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: MaterialButton(
        onPressed: () {
          var userData = BMIModel(
            gender: isMale ? "Male" : "Female",
            height: sliderValue,
            weight: weight,
            age: age,
          );

          Navigator.of(context)
              .pushNamed(AppRoute.resultScreen, arguments: userData);
        },
        color: Color(0xff3D81E8),
        padding: EdgeInsets.symmetric(vertical: 30),
        child: Text(
          "Calculate",
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

/// switch
/// color
/// text
/// description
///
///
/// function text
/// function description
/// function color
