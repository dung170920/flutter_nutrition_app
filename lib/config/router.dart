import 'package:flutter/material.dart';
import 'package:nutrition_app/screens/screens.dart';
import 'package:nutrition_app/widgets/nav.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => const HomeScreen(),
  Nav.routeName: (context) => const Nav(),
  DailyMealDetailScreen.routeName: (context) => const DailyMealDetailScreen(),
  AddFoodScreen.routeName: (context) => const AddFoodScreen()
};
