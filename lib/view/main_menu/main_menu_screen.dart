import 'package:flutter/material.dart';
import 'package:flutter_animation/view/home_screen/home_screen.dart';
import 'package:flutter_animation/view/menu_screen/menu_screen.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class MainAndMenuScreen extends StatelessWidget {
  const MainAndMenuScreen({super.key});

  @override
  Widget build(BuildContext context) => const ZoomDrawer(
        style: DrawerStyle.defaultStyle,
        menuScreen: MenuScreen(),
        mainScreen: HomeScreen(),
      );
}
