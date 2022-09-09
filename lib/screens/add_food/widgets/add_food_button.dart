import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nutrition_app/config/theme.dart';

class AddFoodButton extends StatefulWidget {
  const AddFoodButton({super.key});

  @override
  State<AddFoodButton> createState() => _AddFoodButtonState();
}

class _AddFoodButtonState extends State<AddFoodButton> {
  int amount = 160;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: ThemeColors.colorTint200,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: IconButton(
                      hoverColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onPressed: () {
                        setState(() {
                          amount--;
                        });
                      },
                      icon: const FaIcon(
                        FontAwesomeIcons.minus,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    '${amount}g',
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: IconButton(
                      hoverColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onPressed: () {
                        setState(() {
                          amount++;
                        });
                      },
                      icon: const Icon(
                        Icons.add,
                        color: Colors.black,
                        size: 24,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  color: ThemeColors.colorPrimary,
                  borderRadius: BorderRadius.circular(16)),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Apply',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
