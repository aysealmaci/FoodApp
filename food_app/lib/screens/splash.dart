import 'package:flutter/material.dart';
import 'package:food_app/screens/home.dart';
import 'package:food_app/widgets/main_button.dart';

import '../style.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size appSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 97, 212, 179),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 100, top: 100, right: 100),
            child: Container(
                // child: Image.asset(
                //   'motor.png',
                //   fit: BoxFit.fill,
                //   height: appSize.height / 3,
                // ),
                ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Text(
              "Get\nThe Fastest\nDelivery",
              style: mainTextStyle(),
            ),
          ),
          Text(
            "Order food and get delivery\nTin fastest time in town.",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          MainButtons(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            button_name: "Get Started Now!",
          )
        ],
      ),
    );
  }
}
