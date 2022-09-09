import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nutrition_app/models/food_model.dart';
import 'package:nutrition_app/screens/home/widgets/daily_calories_statistics.dart';
import 'package:nutrition_app/widgets/widgets.dart';
import 'package:nutrition_app/screens/home/widgets/daily_summary.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  List<FoodModel> foods = [
    FoodModel(
      foodName: 'Expresso coffee',
      consumedAmount: '30 ml',
      icon: SvgPicture.asset(
        'assets/icons/tea.svg',
        width: 24,
        height: 24,
      ),
      boxColor: Colors.blue,
    ),
    FoodModel(
        foodName: 'Croissant',
        consumedAmount: '100 g',
        icon: SvgPicture.asset(
          'assets/icons/croissant.svg',
          width: 24,
          height: 24,
        ),
        boxColor: Colors.orangeAccent)
  ];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const DailySummary(),
      const DailyCaloriesStatistics(),
      DailyMeal(
        title: 'Breakfast',
        progressValue: 0.5,
        totalConsumedAmount: '407',
        foods: foods,
      )
    ]);
  }
}
