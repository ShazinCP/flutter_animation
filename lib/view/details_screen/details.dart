import 'package:flutter/material.dart';
import 'package:flutter_animation/constants/colors.dart';
import 'package:flutter_animation/constants/sizedbox.dart';
import 'package:flutter_animation/model/food_model.dart';
import 'package:flutter_animation/view/details_screen/widgets/thumb_icon.dart';

class FoodDetails extends StatelessWidget {

  final FoodModel food;
  const FoodDetails({super.key,  required this.food});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cBlackColor,
      appBar: AppBar(
        backgroundColor: cTransparentColor,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ClipRRect(
              child: Hero(
                tag:'tag${food.img}' ,
                child: Image.asset(
                  'assets/${food.img}',
                  height: 360,
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              )
            ),
           cHeight30,
            ListTile(
              title:Text(
                food.title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: cLightYellowColor
                )
              ),
              subtitle: Text(
                '₹${food.price}',
                style:  TextStyle(letterSpacing: 1,color: cGreyColorShade600)
              ),
              trailing: const HeartIcon()
            ),
            Padding(
              padding: const EdgeInsets.all(18),
              child:Text(
                food.details,
                style: TextStyle(
                  color: cGreyColorShade600,
                  height: 1.4
                )
              )
            ),
          ],
        ),
      )
    );
  }
}