import 'package:edk_mobile_v3/src/providers/db_provider.dart';

class StationsResponse {
  int meditationId;
  List<Station> stations;

  StationsResponse({this.meditationId, this.stations});

  StationsResponse.fromJson(Map<String, dynamic> json) {
    meditationId = json['meditationId'];
    if (json['stations'] != null) {
      stations = new List<Station>();
      json['stations'].forEach((v) {
        stations.add(new Station.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['meditationId'] = this.meditationId;
    if (this.stations != null) {
      data['stations'] = this.stations.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Station {
  String title;
  int id;
  String author;
  String authorBio;
  int stationId;
  String placeId;
  String audioFileUrl;
  String stationText;
  int meditationId;

  Station(
      {this.title,
      this.id,
      this.author,
      this.authorBio,
      this.stationId,
      this.placeId,
      this.audioFileUrl,
      this.stationText});

  Station.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    id = json['id'];
    author = json['author'];
    authorBio = json['authorBio'];
    stationId = json['stationId'];
    placeId = json['placeId'];
    audioFileUrl = json['audioFileUrl'];
    stationText = json['text'];
  }

  Station.fromDbObject(StationDbData stationDb) {
    this.title = stationDb.title.toString();
    this.id = stationDb.id.toString() as int;
    this.author = stationDb.author.toString();
    this.authorBio = stationDb.authorBio.toString();
    this.stationId = stationDb.stationId.toString() as int;
    this.placeId = stationDb.placeId.toString();
    this.audioFileUrl = stationDb.audioFileUrl.toString();
    this.stationText = stationDb.stationText.toString();
    this.meditationId = stationDb.toString() as int;
  }

  StationDbData toDbObject(int meditationId) {
    return StationDbData(
      audioFileUrl: this.audioFileUrl,
      author: this.author,
      authorBio: this.authorBio,
      id: this.id,
      placeId: this.placeId,
      stationId: this.stationId,
      stationText: this.stationText,
      title: this.title,
      meditationId: meditationId,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['id'] = this.id;
    data['author'] = this.author;
    data['authorBio'] = this.authorBio;
    data['stationId'] = this.stationId;
    data['placeId'] = this.placeId;
    data['audioFileUrl'] = this.audioFileUrl;
    data['text'] = this.stationText;
    return data;
  }
}
