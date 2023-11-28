import 'package:flutter/material.dart';
import 'package:flutter_animation/constants/border_radius.dart';
import 'package:flutter_animation/constants/colors.dart';
import 'package:flutter_animation/model/food_model.dart';
import 'package:flutter_animation/view/details_screen/details.dart';

class FoodPackageTile extends StatelessWidget {
  const FoodPackageTile({
    super.key,
    required this.context,
    required this.food,
  });

  final BuildContext context;
  final FoodModel food;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListTile(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => FoodDetails(food: food)));
          },
          contentPadding: const EdgeInsets.all(25),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(food.title,
                  style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: cWhiteColor)),
            ],
          ),
          leading: ClipRRect(
            borderRadius: cRadius8,
            child: Hero(
              tag: 'tag${food.img}',
              child: Image.asset('assets/${food.img}', height: 50.0),
            ),
          ),
          trailing: Text(
            '\$${food.price}',
            style: const TextStyle(color: cWhiteColor),
          ),
        ),
      ],
    );
  }
}
