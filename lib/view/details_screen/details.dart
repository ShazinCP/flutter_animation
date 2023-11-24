import 'package:flutter/material.dart';
import 'package:flutter_animation/constants/colors.dart';
import 'package:flutter_animation/constants/sizedbox.dart';
import 'package:flutter_animation/model/trip_model.dart';
import 'package:flutter_animation/view/details_screen/widgets/heart_icon.dart';

class TripDetails extends StatelessWidget {

  final TripModel trip;
  const TripDetails({super.key,  required this.trip });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: cTransparentColor,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ClipRRect(
              child: Hero(
                tag:'tag${trip.img}' ,
                child: Image.asset(
                  'assets/images/${trip.img}',
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
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: cGreyColorShade800
                )
              ),
              subtitle: Text(
                '${trip.nights} night stay for only \$${trip.price}',
                style: const TextStyle(letterSpacing: 1)
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