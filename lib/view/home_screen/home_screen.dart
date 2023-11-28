import 'package:flutter/material.dart';
import 'package:flutter_animation/constants/border_radius.dart';
import 'package:flutter_animation/constants/colors.dart';
import 'package:flutter_animation/constants/sizedbox.dart';
import 'package:flutter_animation/view/home_screen/widgets/dropdown_button_widget.dart';
import 'package:flutter_animation/view/home_screen/widgets/screen_title.dart';
import 'package:flutter_animation/view/home_screen/widgets/foodlist.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/background_image.jpg"),
              fit: BoxFit.fill,
              ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            cHeight20,
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                //  MenuWidget(),
                 DropdownButtonWidget(),
               ],
             ),
            cHeight10,
            SizedBox(
              height: 130,
              child: ScreenTitle(text: AppLocalizations.of(context)!.texttitle),
            ),
            Container(
              height: 500,
              decoration: BoxDecoration(
                  color: cLightBrownWithOpacity,
                  borderRadius: cRadius20),
              child: const FoodList(),
            ),
          ],
        ),
      ),
    );
  }
}

