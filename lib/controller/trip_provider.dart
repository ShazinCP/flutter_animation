import 'package:flutter/material.dart';
import 'package:flutter_animation/services/trip_services.dart';
import 'package:flutter_animation/view/home_screen/widgets/trip_package_tile.dart';

class TripProvider extends ChangeNotifier {
  final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();
  List<TripPackageTile> tripPackageTiles = [];
  final TripService _tripService = TripService();

  Future<void> fetchTrips(BuildContext context) async {
    tripPackageTiles.clear();
    final trips = _tripService.fetchTrips(context);

    final ft = Future(() {});
    for (final trip in trips) {
      await ft;
      await Future.delayed(const Duration(milliseconds: 100));
      // ignore: use_build_context_synchronously
      tripPackageTiles.add(TripPackageTile(context: context, trip: trip));
      listKey.currentState!.insertItem(tripPackageTiles.length - 1);
    }
  }
}
