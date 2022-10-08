import 'package:flutter/material.dart';

class Type extends StatelessWidget {
  final int typeIndex;
  final Function carTypeChange;

  const Type({super.key, required this.typeIndex, required this.carTypeChange});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            carType(
                1, "GROB-GRAB", 'images/grobgrab.png', () => carTypeChange(1)),
            carType(2, "U-BERRY", 'images/uberry.png', () => carTypeChange(2)),
          ],
        ),
      ],
    );
  }

  Expanded carType(
      int typeIndexSelect, String label, String image, void Function() tap) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(10),
        alignment: Alignment.center,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: (typeIndex == typeIndexSelect)
              ? Colors.lightBlue.withOpacity(1)
              : Colors.black,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: tap,
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(image),
              ),
            ),
            Text(
              label,
              style: const TextStyle(
                color: Colors.white54,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
