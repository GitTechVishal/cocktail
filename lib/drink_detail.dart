import 'package:cocktail/main.dart';
import 'package:flutter/material.dart';

class DrinkDetail extends StatelessWidget {
  final drink;

  const DrinkDetail({Key? key, required this.drink}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [mycolor, Colors.orange])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(drink["strDrink"]),
          elevation: 0.0,
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [mycolor, Colors.orange])),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Hero(
                  tag: drink["idDrink"],
                  child: CircleAvatar(
                    radius: 100.0,
                    backgroundImage: NetworkImage(drink["strDrinkThumb"]),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "ID: ${drink["idDrink"]}",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 30.0),
                Text(
                  "${drink["strDrink"]}",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
