import 'package:flutter/material.dart';
import 'package:flutter_animation/constants/colors.dart';
import 'package:flutter_animation/constants/sizedbox.dart';
import 'package:flutter_animation/view/home_screen/widgets/menu_widget.dart';
import 'package:flutter_animation/view/home_screen/widgets/screen_title.dart';
import 'package:flutter_animation/view/home_screen/widgets/triplist.dart';

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
              image: AssetImage("assets/travelAppBackground image.png"),
              fit: BoxFit.cover,
              alignment: Alignment.topLeft),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MenuWidget(),
            cHeight30,
            SizedBox(
              height: 160,
              child: ScreenTitle(text: AppLocalizations.of(context)!.texttitle),
            ),
            Container(
              height: 500,
              decoration: BoxDecoration(
                  color: cBlackColor26,
                  borderRadius: BorderRadius.circular(20)),
              child: const TripList(),
            ),
          ],
        ),
      ),
    );
  }
}
