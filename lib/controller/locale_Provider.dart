import 'package:flutter/material.dart';
import 'package:flutter_animation/l10n/l10n.dart';

class LocaleProvider extends ChangeNotifier {
  static Locale previousLocale = const Locale('en');
  Locale _locale = const Locale('en');
  Locale get locale => _locale;

  void setLocale(Locale locale) {
    if (!L10n.all.contains(locale)) return;
    previousLocale = _locale;
    _locale = locale;

    notifyListeners();
  }
}
