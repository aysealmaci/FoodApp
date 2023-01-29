import 'package:flutter/material.dart';

class PopularFoodWidget extends StatelessWidget {
  final String food_picture_path;
  final String food_name;
  const PopularFoodWidget({
    Key? key,
    required this.food_picture_path,
    required this.food_name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          decoration: BoxDecoration(),
          height: 135,
          width: 80,
          child: Column(
            children: <Widget>[
              Image.asset(food_picture_path, height: 100),
              Text(food_name, style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}
