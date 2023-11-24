import 'package:flutter/material.dart';
import 'package:flutter_animation/controller/heart_icon_provider.dart';
import 'package:flutter_animation/controller/locale_Provider.dart';
import 'package:flutter_animation/controller/trip_provider.dart';
import 'package:flutter_animation/l10n/l10n.dart';
import 'package:flutter_animation/view/home_screen/home_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (context) => LocaleProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => HeartIconProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => TripProvider(),
      ),
    ], child: const MyApp()),
  );
}

class MyApp extends StatelessWidget  {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       supportedLocales:L10n.all,
      locale:Provider.of<LocaleProvider>(context).locale,
      localizationsDelegates:  [
       AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      debugShowCheckedModeBanner: false,
      title: 'Flutter Animation',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
