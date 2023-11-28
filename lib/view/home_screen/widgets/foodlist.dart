import 'package:flutter/material.dart';
import 'package:flutter_animation/controller/locale_provider.dart';
import 'package:flutter_animation/controller/food_provider.dart';
import 'package:provider/provider.dart';

class FoodList extends StatefulWidget {
  const FoodList({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FoodListState createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {
  final Tween<Offset> _offset = Tween(begin: const Offset(1, 3), end: const Offset(0, 0));

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<FoodProvider>(context, listen: false).fetchFoods(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<LocaleProvider>(
      builder: (context, value, child) {
        if (value.locale != LocaleProvider.previousLocale) {
          Provider.of<FoodProvider>(context, listen: false).fetchFoods(context);
          LocaleProvider.previousLocale = value.locale;
        }
        return AnimatedList(
            key: Provider.of<FoodProvider>(context).listKey,
            initialItemCount:
                Provider.of<FoodProvider>(context).foodPackageTiles.length,
            itemBuilder: (context, index, animation) {
              if (index >=
                  Provider.of<FoodProvider>(context).foodPackageTiles.length) {
                return Container();
              }
              return SlideTransition(
                position: animation.drive(_offset),
                child:
                    Provider.of<FoodProvider>(context).foodPackageTiles[index],
              );
            });
      },
    );
  }
}
