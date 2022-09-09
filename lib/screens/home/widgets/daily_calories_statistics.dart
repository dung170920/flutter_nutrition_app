import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nutrition_app/config/config.dart';

import 'package:nutrition_app/widgets/statistics_title.dart';

class DailyCaloriesStatistics extends StatelessWidget {
  const DailyCaloriesStatistics({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2,
      child: Container(
        margin: const EdgeInsets.only(top: 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            StatisticsTitle(
                title: 'Intaked',
                icon: FaIcon(
                  FontAwesomeIcons.pizzaSlice,
                  color: Colors.orange,
                ),
                progressColor: ThemeColors.colorAccent,
                value: 589,
                progressPercent: 0.4),
            SizedBox(
              width: 15,
            ),
            StatisticsTitle(
                title: 'Burned',
                icon: FaIcon(
                  FontAwesomeIcons.fire,
                  color: Colors.red,
                ),
                progressColor: ThemeColors.colorRedAccent,
                value: 738,
                progressPercent: 0.7),
          ],
        ),
      ),
    );
  }
}
