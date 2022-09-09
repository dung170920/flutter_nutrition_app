import 'package:flutter/material.dart';
import 'package:nutrition_app/config/config.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class DailySummary extends StatelessWidget {
  const DailySummary({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.4,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 14),
        margin: const EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
          color: ThemeColors.colorPrimary,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const _CircleProgress(),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                _DesContent(
                  title: 'Carbs',
                  percentValue: 0.4,
                  amountInGram: '14/323g',
                ),
                _DesContent(
                  title: 'Proteins',
                  percentValue: 0.8,
                  amountInGram: '14/129g',
                ),
                _DesContent(
                  title: 'Fats',
                  percentValue: 0.2,
                  amountInGram: '14/85g',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _CircleProgress extends StatelessWidget {
  const _CircleProgress({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 150,
      child: Stack(
        children: [
          SizedBox(
            width: 150,
            height: 150,
            child: CircularProgressIndicator(
              strokeWidth: 8,
              value: 0.7,
              backgroundColor: ThemeColors.colorTint100.withOpacity(0.2),
              valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              margin: const EdgeInsets.all(13),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: ThemeColors.colorTint100.withOpacity(0.2),
                  width: 8,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: ThemeColors.colorTint100.withOpacity(0.1),
                ),
                child: Container(
                  margin: const EdgeInsets.all(22),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Remaining',
                        style: TextStyle(
                          color: ThemeColors.colorTint300,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        '1,112',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'kcal',
                        style: TextStyle(
                            color: ThemeColors.colorTint300,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _DesContent extends StatelessWidget {
  const _DesContent({
    Key? key,
    this.title,
    this.percentValue,
    this.amountInGram,
  }) : super(key: key);

  final String? title;
  final double? percentValue;
  final String? amountInGram;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 120,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title!,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
          LinearPercentIndicator(
            width: 120,
            animation: true,
            lineHeight: 6,
            animationDuration: 2500,
            percent: percentValue!,
            barRadius: const Radius.circular(3),
            progressColor: Colors.white,
            padding: EdgeInsets.zero,
            backgroundColor: ThemeColors.colorTint100.withOpacity(0.2),
          ),
          Text(
            amountInGram!,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
