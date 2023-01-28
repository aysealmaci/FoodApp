import 'package:flutter/material.dart';
import 'package:food_app/widgets/popular_food_widget.dart';

import '../const.dart';

import '../widgets/food_row_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size appSize = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                color: Color.fromARGB(255, 97, 212, 179),
                height: 300,
                /*    child: Image.asset(
                  'motor.png',
                  fit: BoxFit.fill,
                  height: appSize.height / 3,
                ),*/
              ),
              Padding(
                padding: const EdgeInsets.only(top: 255),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  width: appSize.width * 0.7,
                  height: 100,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.pink,
                            style: BorderStyle.solid,
                            width: 2.0),
                      ),
                      hintText: "Find your meal",
                    ),
                  ),
                ),
              )
            ],
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  FoodRowWidget(
                      food_name: "Pizza",
                      food_picture_path: "assets/pizza.png"),
                  FoodRowWidget(
                      food_picture_path: "assets/drink.png",
                      food_name: "Drink"),
                  FoodRowWidget(
                      food_picture_path: "assets/salad.png", food_name: "Salad")
                ],
              )),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "Popular Foods",
              style: TextStyle(
                  color: Colors.orange,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: [
              PopularFoodWidget(
                  food_picture_path: "assets/salad.png", food_name: "Salad"),
              PopularFoodWidget(
                  food_picture_path: "assets/salad.png", food_name: "Salad"),
              PopularFoodWidget(
                  food_picture_path: "assets/salad.png", food_name: "Salad")
            ],
          )

          /*    Column(
            children: [
              ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: foodList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: MediaQuery.of(context).size.width / 2,
                    child: Image.asset(
                      foodList[index]['food']!,
                      fit: BoxFit.fill,
                      height: appSize.height / 3,
                    ),
                  );
                },
              ),
            ],
          )*/
        ],
      ),
    );
  }
}
