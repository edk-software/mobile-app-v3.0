import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'localizations.dart';

class EDKLocalizationsDelegate extends LocalizationsDelegate<EDKLocalizations> {
  const EDKLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['pl', 'en'].contains(locale.languageCode);

  @override
  Future<EDKLocalizations> load(Locale locale) {
    return SynchronousFuture<EDKLocalizations>(EDKLocalizations(locale));
  }

  @override
  bool shouldReload(EDKLocalizationsDelegate old) => false;
}
