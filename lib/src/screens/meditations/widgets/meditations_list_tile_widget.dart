import 'package:edk_mobile_v3/src/models/station.dart';
import 'package:flutter/material.dart';

class MeditationListTile extends StatelessWidget {
  final Station station;
  final String language;

  MeditationListTile(this.station, this.language);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24),
      child: Material(
          child: Ink(
        decoration: BoxDecoration(
          color: Color(0xff282932),
        ),
        child: InkWell(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.only(left: 12),
            height: 64,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                textsColumn(),
                downloadButtonColumn(),
                playButtonColumn(),
              ],
            ),
          ),
        ),
      )),
    );
  }

  textsColumn() {
    return Flexible(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: <Widget>[
              Flexible(
                child: Text(
                  "${station.title}!",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                "$language",
              ),
            ],
          ),
        ],
      ),
    );
  }

  downloadButtonColumn() {
    return SizedBox(
      height: 64,
      width: 48,
      child: FlatButton(
        padding: EdgeInsets.zero,
        onPressed: () {},
        child: Image.asset(
          "assets/images/download.png",
        ),
      ),
    );
  }

  playButtonColumn() {
    return SizedBox(
      height: 64,
      width: 48,
      child: FlatButton(
        padding: EdgeInsets.zero,
        onPressed: () {},
        child: Image.asset(
          "assets/images/play.png",
        ),
      ),
    );
  }
}
