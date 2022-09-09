import 'package:flutter/material.dart';
import 'package:nutrition_app/config/config.dart';
import 'package:nutrition_app/screens/screens.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class DailyMealRemaining extends StatelessWidget {
  const DailyMealRemaining({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Remaining',
                      style: TextStyle(
                          color: ThemeColors.colorTint500,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: const [
                        Text(
                          '1,112',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'kcal',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                LinearPercentIndicator(
                  animation: true,
                  lineHeight: 6,
                  animationDuration: 3000,
                  percent: 0.8,
                  barRadius: const Radius.circular(3),
                  progressColor: ThemeColors.colorPrimary,
                  padding: EdgeInsets.zero,
                  backgroundColor: ThemeColors.colorTint600.withOpacity(0.2),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.popAndPushNamed(context, AddFoodScreen.routeName);
            },
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: ThemeColors.colorPrimary,
                  borderRadius: BorderRadius.circular(10)),
              child: const Icon(
                Icons.add,
                color: Colors.white,
                size: 25,
              ),
            ),
          )
        ],
      ),
    );
  }
}
