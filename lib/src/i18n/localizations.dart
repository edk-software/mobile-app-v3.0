import 'package:edk_mobile_v3/src/i18n/localized_values.dart';
import 'package:flutter/material.dart';

class EDKLocalizations {
  EDKLocalizations(this._lcl);

  final Locale _lcl;

  static EDKLocalizations of(BuildContext context) {
    return Localizations.of<EDKLocalizations>(context, EDKLocalizations);
  }

  String edk() => lv[_lcl.languageCode]['edk'];
  String routes() => lv[_lcl.languageCode]['routes'];
  String meditations() => lv[_lcl.languageCode]['meditations'];
  String support() => lv[_lcl.languageCode]['support'];
  String meditationsAvailable(int count) =>
      lv[_lcl.languageCode]['meditationsAvailable']
          .replaceFirst('%@', count.toString());
}
