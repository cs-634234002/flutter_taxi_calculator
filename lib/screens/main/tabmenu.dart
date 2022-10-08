import 'package:flutter/material.dart';
import 'package:flutter_cartax_v2/screens/calculator/calculator_screen.dart';

class CarTaxTabMenu extends StatelessWidget {
  final List<Widget> tabs = [
    const Center(
      child: CalculatorScreen(),
    ),
  ];

  final int currentTabIndex;
  CarTaxTabMenu({
    Key? key,
    required this.currentTabIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return tabs[currentTabIndex];
  }
}
