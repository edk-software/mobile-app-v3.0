import 'package:edk_mobile_v3/src/i18n/localizations.dart';
import 'package:flutter/material.dart';

class MeditationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Text(EDKLocalizations.of(context).meditations),
      ),
    );
  }
}
