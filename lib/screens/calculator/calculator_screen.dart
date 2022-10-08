import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_cartax_v2/screens/calculator/calculate_button.dart';
import 'package:flutter_cartax_v2/screens/result/result_screen.dart';
import 'package:flutter_cartax_v2/screens/calculator/type.dart';
import 'package:flutter_cartax_v2/screens/calculator/grobgrab.dart';
import 'package:flutter_cartax_v2/screens/calculator/calculator.dart';
import 'package:flutter_cartax_v2/screens/calculator/uberry.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  int carTax = 0;
  int typeIndex = 1;
  int km = 0;
  int person = 1;
  int day = 1;

  void changeTypeIndex(int newTypeIndex) {
    setState(() {
      typeIndex = newTypeIndex;
    });
  }

  void changeKM(double newKM) {
    setState(() {
      km = newKM.toInt();
    });
  }

  void changePerson(int newPerson) {
    setState(() {
      person = newPerson.toInt();
    });
  }

  void changeDay(int newDay) {
    setState(() {
      day = newDay;
    });
  }

  void calculateButtonClick() {
    setState(() {
      if (typeIndex == 1) {
        carTax = Calculator.car(km: km, person: person);
      } else if (typeIndex == 2) {
        carTax = Calculator.uberry(km: km, day: day);
      }

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ResultScreen(carTax: carTax)),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Type(typeIndex: typeIndex, carTypeChange: changeTypeIndex //Code,
            ),
        (typeIndex == 1)
            ? Car(
                km: km,
                person: person,
                changeKM: changeKM,
                changePerson: changePerson)
            : Uberry(
                km: km,
                day: day,
                changeKM: changeKM,
                changeDay: changeDay,
              ), //Code Car Detail
        CalculateButton(
          buttonClickedFunction: calculateButtonClick,
        ),
      ],
    );
  }
}
