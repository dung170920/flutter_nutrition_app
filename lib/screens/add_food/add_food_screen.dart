import 'package:flutter/material.dart';
import 'package:nutrition_app/screens/add_food/widgets/add_food_appbar.dart';
import 'package:nutrition_app/screens/add_food/widgets/add_food_button.dart';
import 'package:nutrition_app/screens/add_food/widgets/add_food_content.dart';
import 'package:nutrition_app/screens/add_food/widgets/add_food_image.dart';

class AddFoodScreen extends StatelessWidget {
  const AddFoodScreen({super.key});
  static String routeName = '/addfood';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: const [
              AddFoodAppbar(),
              AddFoodImage(),
              AddFoodContent(),
              AddFoodButton()
            ],
          ),
        ),
      ),
    );
  }
}
