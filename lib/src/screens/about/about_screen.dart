import 'package:edk_mobile_v3/src/i18n/localizations.dart';
import 'package:edk_mobile_v3/src/screens/about/about_bloc.dart';
import 'package:edk_mobile_v3/src/utils/edk_colors.dart';
import 'package:edk_mobile_v3/src/utils/edk_constants.dart';
import 'package:edk_mobile_v3/src/widgets/edk_menu_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AboutSreen extends StatefulWidget {
  @override
  _AboutSreenState createState() => _AboutSreenState();
}

class _AboutSreenState extends State<AboutSreen> {
  AboutBloc _bloc;

  @override
  void initState() {
    super.initState();

    _bloc = context.read<AboutBloc>();
  }

  @override
  void dispose() {
    super.dispose();

    _bloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: EDKColor.shark,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            actions: [
              IconButton(
                  icon: Image.asset(
                    "assets/images/settings.png",
                    fit: BoxFit.fill,
                    height: 24,
                    width: 24,
                  ),
                  onPressed: () {}),
            ],
          ),
        ],
        body: SafeArea(
          top: false,
          bottom: false,
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  EDKLocalizations.of(context).aboutEDK().toUpperCase(),
                  style: TextStyle(
                    fontFamily: kFontFamilyOpenSans,
                    color: EDKColor.whisper,
                    fontWeight: FontWeight.bold,
                    fontSize: 34,
                  ),
                ),
                StreamBuilder<Object>(
                    stream: _bloc.selectedTab,
                    builder: (context, snapshot) {
                      return Container(
                        // height: 30,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              EDKMenuTile(
                                selected:
                                    0 == snapshot.data || !snapshot.hasData,
                                label: EDKLocalizations.of(context).whatIsIt(),
                                onTap: () => _bloc.selectTab(0),
                              ),
                              EDKMenuTile(
                                selected: 1 == snapshot.data,
                                label:
                                    EDKLocalizations.of(context).challenges(),
                                onTap: () => _bloc.selectTab(1),
                              ),
                              EDKMenuTile(
                                selected: 2 == snapshot.data,
                                label: EDKLocalizations.of(context).opinions(),
                                onTap: () => _bloc.selectTab(2),
                              ),
                              EDKMenuTile(
                                selected: 3 == snapshot.data,
                                label:
                                    EDKLocalizations.of(context).organization(),
                                onTap: () => _bloc.selectTab(3),
                              ),
                            ],
                          ),
                        ),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
