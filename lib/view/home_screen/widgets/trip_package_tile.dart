import 'package:flutter/material.dart';
import 'package:flutter_animation/constants/colors.dart';
import 'package:flutter_animation/model/trip_model.dart';
import 'package:flutter_animation/view/details_screen/details.dart';

class TripPackageTile extends StatelessWidget {
  const TripPackageTile({
    super.key,
    required this.context,
    required this.trip,
  });

  final BuildContext context;
  final TripModel trip;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListTile(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => TripDetails(trip: trip)));
          },
          contentPadding: const EdgeInsets.all(25),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Text('${trip.nights} nights',
              //     style: const TextStyle(
              //         fontSize: 14,
              //         fontWeight: FontWeight.bold,
              //         color: cWhiteColor)),
              Text(trip.title,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: cWhiteColor)),
            ],
          ),
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Hero(
              tag: 'tag${trip.img}',
              child: Image.asset('assets/${trip.img}', height: 50.0),
            ),
          ),
          trailing: Text(
            '\$${trip.price}',
            style: const TextStyle(color: cWhiteColor),
          ),
        ),
      ],
    );
  }
}
