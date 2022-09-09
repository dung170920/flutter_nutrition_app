import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nutrition_app/config/config.dart';
import 'package:nutrition_app/screens/screens.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Today',
                style: TextStyle(
                    color: ThemeColors.colorTint500,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                'Web, 18 Aug',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, DailyMealDetailScreen.routeName);
            },
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: ThemeColors.colorPrimaryLight,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: SvgPicture.asset(
                  'assets/icons/calendar.svg',
                  color: ThemeColors.colorPrimary,
                  height: 24,
                  width: 24,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
