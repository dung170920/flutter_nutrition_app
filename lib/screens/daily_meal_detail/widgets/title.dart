import 'package:flutter/material.dart';
import 'package:nutrition_app/config/config.dart';

class DailyMealTitle extends StatelessWidget {
  const DailyMealTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        SizedBox(
          height: 20,
        ),
        Text(
          'Today',
          style: TextStyle(
              color: ThemeColors.colorTint500,
              fontSize: 14,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 6,
        ),
        Text(
          'Web, 18 Aug',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
