import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nutrition_app/config/config.dart';
import 'package:nutrition_app/widgets/widgets.dart';

class AddFoodContent extends StatelessWidget {
  const AddFoodContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: GridView.count(
        primary: false,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        crossAxisCount: 2,
        shrinkWrap: true,
        children: const [
          StatisticsTitle(
            title: 'Calories',
            icon: FaIcon(
              FontAwesomeIcons.fire,
              color: Colors.red,
            ),
            progressColor: Colors.blue,
            value: 149,
            progressPercent: 0.5,
          ),
          StatisticsTitle(
            title: 'Carbs',
            icon: FaIcon(
              FontAwesomeIcons.fire,
              color: Colors.amber,
            ),
            progressColor: Colors.amber,
            value: 23.50,
            progressPercent: 0.7,
            unitName: 'grams',
          ),
          StatisticsTitle(
            title: 'Proteins',
            icon: FaIcon(
              FontAwesomeIcons.fire,
              color: Colors.blue,
            ),
            progressColor: ThemeColors.colorAccent,
            value: 6.00,
            progressPercent: 0.4,
            unitName: 'grams',
          ),
          StatisticsTitle(
            title: 'Fats',
            icon: FaIcon(
              FontAwesomeIcons.water,
              color: Colors.yellow,
            ),
            progressColor: Colors.deepOrangeAccent,
            value: 4.10,
            progressPercent: 0.2,
            unitName: 'grams',
          ),
        ],
      ),
    );
  }
}
