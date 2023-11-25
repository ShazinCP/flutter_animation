import 'package:flutter/material.dart';
import 'package:flutter_animation/constants/colors.dart';
import 'package:flutter_animation/controller/locale_provider.dart';
import 'package:provider/provider.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cBlackColor,
      body: Consumer<LocaleProvider>(
        builder: (context, value, child) {
          return ListView(
            children: [
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Langauge Settings',
                style:
                    TextStyle(color: cWhiteColor, fontWeight: FontWeight.bold),
              ),
              ListTile(
                title: const Text(
                  'English',
                  style: TextStyle(
                    color: cWhiteColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  value.setLocale(const Locale('en'));
                },
              ),
              ListTile(
                title: const Text(
                  'Hindi',
                  style: TextStyle(
                    color: cWhiteColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  value.setLocale(const Locale('hi'));
                },
              ),
              ListTile(
                title: const Text(
                  'Spanish',
                  style: TextStyle(
                    color: cWhiteColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  value.setLocale(const Locale('es'));
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
