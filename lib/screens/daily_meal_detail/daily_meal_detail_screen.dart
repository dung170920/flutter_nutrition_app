import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nutrition_app/models/food_model.dart';
import 'package:nutrition_app/screens/daily_meal_detail/widgets/daily_meal_appbar.dart';
import 'package:nutrition_app/screens/daily_meal_detail/widgets/daily_meal_remaining.dart';
import 'package:nutrition_app/screens/daily_meal_detail/widgets/title.dart';
import 'package:nutrition_app/widgets/widgets.dart';

class DailyMealDetailScreen extends StatefulWidget {
  const DailyMealDetailScreen({super.key});
  static String routeName = '/dailymealdetail';

  @override
  State<DailyMealDetailScreen> createState() => _DailyMealDetailScreenState();
}

class _DailyMealDetailScreenState extends State<DailyMealDetailScreen> {
  List<FoodModel> breakfast = [
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

  List<FoodModel> lunch = [
    FoodModel(
      foodName: 'Chicken breast',
      consumedAmount: '200 g',
      icon: SvgPicture.asset(
        'assets/icons/chicken.svg',
        width: 24,
        height: 24,
      ),
      boxColor: Colors.purpleAccent,
    ),
    FoodModel(
        foodName: 'Green salad',
        consumedAmount: '100 g',
        icon: SvgPicture.asset(
          'assets/icons/salad.svg',
          width: 24,
          height: 24,
        ),
        boxColor: Colors.greenAccent)
  ];

  List<FoodModel> dinner = [
    FoodModel(
      foodName: 'Expresso coffee',
      consumedAmount: '30 ml',
      icon: SvgPicture.asset(
        'assets/icons/pasta.svg',
        width: 24,
        height: 24,
      ),
      boxColor: Colors.redAccent,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              const SizedBox(
                height: 20,
              ),
              const DailyMealAppbar(),
              const DailyMealTitle(),
              DailyMeal(
                  foods: breakfast,
                  title: 'Breakfast',
                  totalConsumedAmount: '407',
                  progressValue: 0.5),
              DailyMeal(
                  foods: lunch,
                  title: 'Lunch',
                  totalConsumedAmount: '352',
                  progressValue: 0.7),
              DailyMeal(
                  foods: dinner,
                  title: 'Dinner',
                  totalConsumedAmount: '635',
                  progressValue: 0.3),
              const DailyMealRemaining()
            ],
          ),
        ),
      ),
    );
  }
}
