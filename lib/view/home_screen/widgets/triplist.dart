import 'package:flutter/material.dart';
import 'package:flutter_animation/controller/locale_provider.dart';
import 'package:flutter_animation/controller/trip_provider.dart';
import 'package:provider/provider.dart';

class TripList extends StatefulWidget {
  const TripList({super.key});

  @override
  _TripListState createState() => _TripListState();
}

class _TripListState extends State<TripList> {
  final Tween<Offset> _offset = Tween(begin: const Offset(1, 3), end: const Offset(0, 0));

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<TripProvider>(context, listen: false).fetchTrips(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<LocaleProvider>(
      builder: (context, value, child) {
        if (value.locale != LocaleProvider.previousLocale) {
          Provider.of<TripProvider>(context, listen: false).fetchTrips(context);
          LocaleProvider.previousLocale = value.locale;
        }
        return AnimatedList(
            key: Provider.of<TripProvider>(context).listKey,
            initialItemCount:
                Provider.of<TripProvider>(context).tripPackageTiles.length,
            itemBuilder: (context, index, animation) {
              if (index >=
                  Provider.of<TripProvider>(context).tripPackageTiles.length) {
                return Container();
              }
              return SlideTransition(
                position: animation.drive(_offset),
                child:
                    Provider.of<TripProvider>(context).tripPackageTiles[index],
              );
            });
      },
    );
  }
}
