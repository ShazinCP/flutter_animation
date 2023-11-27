import 'package:flutter/material.dart';
import 'package:flutter_animation/model/trip_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TripService {
  List<TripModel> fetchTrips(BuildContext context) {
    return [
      TripModel(
        title: AppLocalizations.of(context)!.burgertitle,
        price: '100',
        img: 'burger.jpg',
        details: AppLocalizations.of(context)!.burgerdetails,
      ),
      TripModel(
        title: AppLocalizations.of(context)!.broasttitle,
        price: '450',
        img: 'broasted_chicken.jpg',
        details: AppLocalizations.of(context)!.broastdetails,
      ),
      TripModel(
        title: AppLocalizations.of(context)!.friedchickentitle,
        price: '1000',
        img: 'korean_friedchicken.jpg',
        details: AppLocalizations.of(context)!.friedchickendetails,
      ),
      TripModel(
        title: AppLocalizations.of(context)!.beefsteaktitle,
        price: '750',
        img: 'beef_steak.jpg',
        details: AppLocalizations.of(context)!.beefsteakdetails,
      ),
    ];
  }
}
