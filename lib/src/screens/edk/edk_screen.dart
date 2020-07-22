import 'package:edk_mobile_v3/src/i18n/localizations.dart';
import 'package:edk_mobile_v3/src/utils/edk_colors.dart';
import 'package:edk_mobile_v3/src/utils/edk_constants.dart';
import 'package:flutter/material.dart';

class EdkScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            topBar(),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  logo(),
                  centerInfo(context),
                  SizedBox(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget topBar() {
    return Container(
      alignment: Alignment.centerRight,
      child: IconButton(
          icon: Image.asset(
            "assets/images/settings.png",
            fit: BoxFit.fill,
            height: 24,
            width: 24,
          ),
          onPressed: () {}),
    );
  }

  Widget logo() {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0),
      child: Image.asset(
        'assets/images/edk_logo.png',
        fit: BoxFit.fitHeight,
        height: 55,
      ),
    );
  }

  Widget centerInfo(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          EDKLocalizations.of(context).lifeWillNotLiveItself(),
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: kFontFamilyOpenSans,
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: EDKColor.whisper,
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          EDKLocalizations.of(context).takeEDKChallenge(),
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: kFontFamilyOpenSans,
            fontSize: 16,
            color: EDKColor.slateGray,
          ),
        ),
        SizedBox(height: 40.0),
        MaterialButton(
          height: 48.0,
          color: EDKColor.red,
          onPressed: () {},
          child: Text(
            EDKLocalizations.of(context).embarkOnTheJourney().toUpperCase(),
            style: TextStyle(
              fontFamily: kFontFamilyOpenSans,
              fontSize: 17,
              fontWeight: FontWeight.w600,
              color: EDKColor.whisper,
            ),
          ),
        ),
        SizedBox(height: 15.0),
        MaterialButton(
          height: 48.0,
          color: EDKColor.shark,
          elevation: 0,
          onPressed: () {},
          child: Text(
            EDKLocalizations.of(context).aboutEDK().toUpperCase(),
            style: TextStyle(
              fontFamily: kFontFamilyOpenSans,
              fontSize: 17,
              fontWeight: FontWeight.w600,
              color: EDKColor.red,
            ),
          ),
        ),
      ],
    );
  }
}
