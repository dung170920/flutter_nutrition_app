import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nutrition_app/config/theme.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class StatisticsTitle extends StatelessWidget {
  const StatisticsTitle(
      {super.key,
      required this.progressColor,
      required this.title,
      required this.icon,
      required this.value,
      required this.progressPercent,
      this.unitName});

  final Color progressColor;
  final String title;
  final FaIcon icon;
  final double value;
  final double progressPercent;
  final String? unitName;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(color: ThemeColors.colorTint400),
            borderRadius: BorderRadius.circular(25)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      color: ThemeColors.colorTint700,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                icon,
              ],
            ),
            Row(
              children: [
                RotatedBox(
                  quarterTurns: -1,
                  child: LinearPercentIndicator(
                    width: 60,
                    animation: true,
                    lineHeight: 6,
                    animationDuration: 2500,
                    percent: progressPercent,
                    barRadius: const Radius.circular(3),
                    progressColor: progressColor,
                    padding: EdgeInsets.zero,
                    backgroundColor: ThemeColors.colorTint400.withOpacity(0.4),
                  ),
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      value.toString(),
                      style: const TextStyle(
                          color: ThemeColors.colorTint700,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      unitName ?? 'kcal',
                      style: const TextStyle(
                        color: ThemeColors.colorTint600,
                        fontSize: 12,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
