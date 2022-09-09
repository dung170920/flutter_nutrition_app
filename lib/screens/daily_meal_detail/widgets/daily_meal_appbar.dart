import 'package:flutter/material.dart';
import 'package:nutrition_app/config/config.dart';

class DailyMealAppbar extends StatelessWidget {
  const DailyMealAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: ThemeColors.colorPrimaryLight,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(
              child: Icon(
                Icons.arrow_back,
                color: ThemeColors.colorPrimary,
                size: 25,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
