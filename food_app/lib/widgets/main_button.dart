import 'package:flutter/material.dart';
import 'package:food_app/screens/splash.dart';

class MainButtons extends StatelessWidget {
  const MainButtons({
    Key? key,
    this.button_name,
    required this.onPressed,
  }) : super(key: key);

  final String? button_name;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 50,
        width: 250,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 254, 124, 73),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))),
            onPressed: onPressed,
            child: Text(
              button_name!,
              style: TextStyle(
                fontSize: 18,
              ),
            )));
  }
}
