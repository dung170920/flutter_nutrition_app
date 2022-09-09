import 'package:flutter/material.dart';
import 'package:nutrition_app/config/config.dart';
import 'package:nutrition_app/models/models.dart';

class DailyMeal extends StatefulWidget {
  const DailyMeal(
      {super.key,
      required this.foods,
      required this.title,
      required this.totalConsumedAmount,
      required this.progressValue});

  final List<FoodModel> foods;
  final String title;
  final String totalConsumedAmount;
  final double progressValue;

  @override
  State<DailyMeal> createState() => _DailyMealState();
}

class _DailyMealState extends State<DailyMeal> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxHeight: double.infinity,
      ),
      child: Container(
        margin: const EdgeInsets.only(top: 30, bottom: 30),
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          children: [
            SizedBox(
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 25,
                        width: 25,
                        child: CircularProgressIndicator(
                          strokeWidth: 4,
                          value: widget.progressValue,
                          backgroundColor:
                              ThemeColors.colorAccent.withOpacity(0.2),
                          valueColor: const AlwaysStoppedAnimation<Color>(
                              ThemeColors.colorAccent),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Text(
                        widget.title,
                        style: const TextStyle(
                          color: ThemeColors.colorTint700,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        widget.totalConsumedAmount,
                        style: const TextStyle(
                          color: ThemeColors.colorTint500,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const Text(
                        ' kcal',
                        style: TextStyle(
                          color: ThemeColors.colorTint500,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ListView.builder(
              itemCount: widget.foods.length,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return Container(
                  height: 70,
                  margin: EdgeInsets.zero,
                  child: IntrinsicHeight(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const VerticalDivider(
                          color: ThemeColors.colorTint300,
                          thickness: 2,
                        ),
                        const SizedBox(width: 15),
                        Container(
                          height: 48,
                          width: 48,
                          decoration: BoxDecoration(
                              color: widget.foods[index].boxColor!
                                  .withOpacity(0.2),
                              borderRadius: BorderRadius.circular(16)),
                          child: Center(
                            child: widget.foods[index].icon,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              widget.foods[index].foodName!,
                              style: const TextStyle(
                                  color: ThemeColors.colorTint700,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              widget.foods[index].consumedAmount!,
                              style: const TextStyle(
                                color: ThemeColors.colorTint500,
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
