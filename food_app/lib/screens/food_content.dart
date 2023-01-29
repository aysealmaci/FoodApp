import 'package:flutter/material.dart';
import 'package:food_app/widgets/main_button.dart';

class FoodContent extends StatelessWidget {
  const FoodContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size appSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Card(
              // elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                  decoration: BoxDecoration(),
                  height: appSize.height,
                  width: appSize.width,
                  child: Column(
                    children: <Widget>[
                      Image.asset("assets/special recepie.png", height: 300),
                      Text("Special Recepie",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30)),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 40, right: 40, top: 30),
                        child: Text(
                          "This meal is specially prepared by our chef. Taste this delicious and healty meal!",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.grey.shade600),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: MainButtons(
                          onPressed: () {},
                          button_name: "Order Now!",
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
