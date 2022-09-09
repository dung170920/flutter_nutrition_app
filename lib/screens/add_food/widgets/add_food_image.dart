import 'package:flutter/material.dart';

class AddFoodImage extends StatelessWidget {
  const AddFoodImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5,
      child: Stack(
        children: [
          Positioned(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(
                'assets/images/pasta.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Positioned(
            bottom: 20,
            left: 20,
            child: Text(
              'Pasta with tomato sauce',
              style: TextStyle(color: Colors.white, fontSize: 22),
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
