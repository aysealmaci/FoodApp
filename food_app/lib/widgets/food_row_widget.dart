import 'package:flutter/material.dart';

class FoodRowWidget extends StatelessWidget {
  final String food_picture_path;
  final String food_name;
  const FoodRowWidget({
    Key? key,
    required this.food_picture_path,
    required this.food_name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 80,
            width: 120,
            child: Image.asset(
              food_picture_path,
              height: 20,
            ),
          ),
        ),
        Text(food_name)
      ],
    );
  }
}
