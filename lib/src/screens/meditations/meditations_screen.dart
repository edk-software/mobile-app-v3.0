import 'package:edk_mobile_v3/src/models/station.dart';
import 'package:edk_mobile_v3/src/screens/meditations/meditations_bloc.dart';
import 'package:flutter/material.dart';

class MeditationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = MeditationsBloc();

    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            logo(),
            meditationsInfo(bloc),
            meditationsList(bloc),
          ],
        ),
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
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          StreamBuilder(
            stream: bloc.stations,
            builder: (context, snapshot) {
              return Text(
                "${snapshot.data.length} dostępnych rozważań",
                textAlign: TextAlign.left,
              );
            },
          ),
          // Spacer(),
          Text(""),
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
        return ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: snapshot.data.length,
            itemBuilder: (context, index) {
              return meditationListTile(snapshot.data[index]);
            });
      },
    );
  }

  Widget meditationListTile(Station station) {
    return ListTile(
      title: Text(
        "${station.title}!",
      ),
    );
  }
}
