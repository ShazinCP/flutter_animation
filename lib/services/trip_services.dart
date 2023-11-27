import 'package:flutter/material.dart';
import 'package:flutter_animation/model/food_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TripService {
  List<FoodModel> fetchTrips(BuildContext context) {
    return [
      FoodModel(
        title: AppLocalizations.of(context)!.burgertitle,
        price: '100',
        img: 'burger.jpg',
        details: AppLocalizations.of(context)!.burgerdetails,
      ),
      FoodModel(
        title: AppLocalizations.of(context)!.broasttitle,
        price: '450',
        img: 'broasted_chicken.jpg',
        details: AppLocalizations.of(context)!.broastdetails,
      ),
      FoodModel(
        title: AppLocalizations.of(context)!.friedchickentitle,
        price: '1000',
        img: 'korean_friedchicken.jpg',
        details: AppLocalizations.of(context)!.friedchickendetails,
      ),
      FoodModel(
        title: AppLocalizations.of(context)!.beefsteaktitle,
        price: '750',
        img: 'beef_steak.jpg',
        details: AppLocalizations.of(context)!.beefsteakdetails,
      ),
    ];
  }
}
