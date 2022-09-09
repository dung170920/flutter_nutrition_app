import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nutrition_app/config/my_flutter_app_icons.dart';
import 'package:nutrition_app/config/theme.dart';
import 'package:nutrition_app/screens/screens.dart';

class Nav extends StatefulWidget {
  static String routeName = '/nav';
  const Nav({super.key});

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _currentIndex = 0;

  void changeScreen(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final _screens = [
    const HomeScreen(),
    Container(),
    Container(),
    Container(),
    Container()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: _screens[_currentIndex],
      ),
      bottomNavigationBar: DotNavigationBar(
        currentIndex: _currentIndex,
        onTap: changeScreen,
        backgroundColor: Colors.white,
        borderRadius: 0,
        enablePaddingAnimation: false,
        marginR: EdgeInsets.zero,
        paddingR: EdgeInsets.zero,
        items: [
          DotNavigationBarItem(
            icon: const Icon(
              Icons.home_rounded,
              size: 20,
            ),
            selectedColor: ThemeColors.colorPrimary,
            unselectedColor: ThemeColors.colorTint400,
          ),
          DotNavigationBarItem(
            icon: const Icon(CustomIcons.search),
            selectedColor: ThemeColors.colorPrimary,
            unselectedColor: ThemeColors.colorTint400,
          ),
          DotNavigationBarItem(
            icon: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: ThemeColors.colorPrimary,
              ),
              child: Center(
                child: SvgPicture.asset(
                  "assets/icons/barcode.svg",
                  color: Colors.white,
                ),
              ),
            ),
            selectedColor: Colors.transparent,
            unselectedColor: Colors.transparent,
          ),
          DotNavigationBarItem(
            icon: const Icon(CustomIcons.bar_chart),
            selectedColor: ThemeColors.colorPrimary,
            unselectedColor: ThemeColors.colorTint400,
          ),
          DotNavigationBarItem(
            icon: const Icon(CustomIcons.user),
            selectedColor: ThemeColors.colorPrimary,
            unselectedColor: ThemeColors.colorTint400,
          ),
        ],
      ),
    );
  }
}
