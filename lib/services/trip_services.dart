import 'package:flutter/material.dart';
import 'package:flutter_animation/model/trip_model.dart';

class TripService {
  List<TripModel> fetchTrips(BuildContext context) {
    return [
      TripModel(
        title: AppLocalizations.of(context)!.munnartitle,
        price: '350',
        nights: '3',
        img: 'munnar.jpg',
        details: AppLocalizations.of(context)!.munnardetails,
      ),
      TripModel(
        title: AppLocalizations.of(context)!.dubaititle,
        price: '400',
        nights: '5',
        img: 'dubai.jpg',
        details: AppLocalizations.of(context)!.dubaidetails,
      ),
      TripModel(
        title: AppLocalizations.of(context)!.japantitle,
        price: '750',
        nights: '2',
        img: 'japan.jpg',
        details: AppLocalizations.of(context)!.japandetails,
      ),
      TripModel(
        title: AppLocalizations.of(context)!.kashmirtitle,
        price: '600',
        nights: '4',
        img: 'kashmir.jpg',
        details: AppLocalizations.of(context)!.kashmirdetails,
      ),
    ];
  }
}






