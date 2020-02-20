import 'package:flutter/material.dart';

class EDKLocalizations {
  EDKLocalizations(this.locale);

  final Locale locale;

  static EDKLocalizations of(BuildContext context) {
    return Localizations.of<EDKLocalizations>(context, EDKLocalizations);
  }

  static Map<String, Map<String, String>> _localizedValues = {
    'pl': {
      'edk': 'EDK',
      'routes': 'Trasy',
      'meditations': 'Rozważania',
      'support': 'Wesprzyj',
    },
    'en': {
      'edk': 'EDK',
      'routes': 'Routes',
      'meditations': 'Meditations',
      'support': 'Support us',
    },
  };

  String get edk {
    return _localizedValues[locale.languageCode]['edk'];
  }

  String get routes {
    return _localizedValues[locale.languageCode]['routes'];
  }

  String get meditations {
    return _localizedValues[locale.languageCode]['meditations'];
  }

  String get support {
    return _localizedValues[locale.languageCode]['support'];
  }
}
