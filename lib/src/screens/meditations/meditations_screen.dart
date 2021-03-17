import 'package:edk_mobile_v3/src/i18n/localizations.dart';
import 'package:edk_mobile_v3/src/screens/meditations/meditations_bloc.dart';
import 'package:edk_mobile_v3/src/screens/meditations/widgets/meditations_list_tile_widget.dart';
import 'package:flutter/material.dart';

class MeditationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = MeditationsBloc();

    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            topBar(),
            logo(),
            meditationsInfo(bloc),
            meditationsList(bloc),
          ],
        ),
      ),
    );
  }

  Widget topBar() {
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: null,
        child: Image.asset("assets/images/settings.png"),
      ),
    );
  }

  Widget logo() {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          Placeholder(
            fallbackHeight: 100,
          )
        ],
      ),
    );
  }

  Widget meditationsInfo(MeditationsBloc bloc) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          StreamBuilder(
            stream: bloc.stations,
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Container();
              }
              return Text(
                EDKLocalizations.of(context)
                    .meditationsAvailable(snapshot.data.length),
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                  fontFamily: 'Open Sans',
                ),
                textAlign: TextAlign.left,
              );
            },
          ),
          Container(height: 20),
          StreamBuilder(
            stream: bloc.editionYear,
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Container();
              }
              return Text(
                "${snapshot.data}",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                  fontFamily: 'Open Sans',
                ),
                textAlign: TextAlign.left,
              );
            },
          ),
        ],
      ),
    );
  }

  Widget meditationsList(MeditationsBloc bloc) {
    return StreamBuilder(
      stream: bloc.stations,
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return CircularProgressIndicator();
        }
        return ListView.separated(
          padding: EdgeInsets.only(bottom: 10),
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: snapshot.data.length,
          itemBuilder: (context, index) {
            return MeditationListTile(snapshot.data[index], "PL");
          },
          separatorBuilder: (BuildContext context, int index) {
            return Container(height: 10);
          },
        );
      },
    );
  }
}
