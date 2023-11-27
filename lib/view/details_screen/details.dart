import 'package:flutter/material.dart';
import 'package:flutter_animation/constants/colors.dart';
import 'package:flutter_animation/constants/sizedbox.dart';
import 'package:flutter_animation/model/food_model.dart';
import 'package:flutter_animation/view/details_screen/widgets/thumb_icon.dart';

class TripDetails extends StatelessWidget {

  final FoodModel trip;
  const TripDetails({super.key,  required this.trip});

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
                tag:'tag${trip.img}' ,
                child: Image.asset(
                  'assets/${trip.img}',
                  height: 360,
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              )
            ),
           cHeight30,
            ListTile(
              title:Text(
                trip.title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: cLightYellowColor
                )
              ),
              subtitle: Text(
                '₹${trip.price}',
                style:  TextStyle(letterSpacing: 1,color: cGreyColorShade600)
              ),
              trailing: const HeartIcon()
            ),
            Padding(
              padding: const EdgeInsets.all(18),
              child:Text(
                trip.details,
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