import 'package:flutter/material.dart';
import 'package:flutter_animation/services/food_services.dart';
import 'package:flutter_animation/view/home_screen/widgets/food_package_tile.dart';

class FoodProvider extends ChangeNotifier {
  final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();
  List<FoodPackageTile> foodPackageTiles = [];
  final FoodService _foodService = FoodService();

  Future<void> fetchFoods(BuildContext context) async {
    foodPackageTiles.clear();
    final foods = _foodService.fetchFoods(context);

    final ft = Future(() {});
    for (final food in foods) {
      await ft;
      await Future.delayed(const Duration(milliseconds: 100));
      // ignore: use_build_context_synchronously
      foodPackageTiles.add(FoodPackageTile(context: context, food: food));
      listKey.currentState!.insertItem(foodPackageTiles.length - 1);
    }
  }
}
