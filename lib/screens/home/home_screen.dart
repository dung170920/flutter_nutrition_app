import 'package:flutter/material.dart';
import 'package:nutrition_app/screens/home/widgets/home_appbar.dart';
import 'package:nutrition_app/screens/home/widgets/home_body.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = '/home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: const [
            HomeAppbar(),
            HomeBody(),
          ],
        ),
      ),
    );
  }
}
