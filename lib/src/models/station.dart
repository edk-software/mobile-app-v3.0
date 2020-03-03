class StationsResponse {
  String meditationId;
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
  String id;
  String author;
  String authorBio;
  String stationId;
  String placeId;
  String audioFileUrl;
  String text;

  Station(
      {this.title,
      this.id,
      this.author,
      this.authorBio,
      this.stationId,
      this.placeId,
      this.audioFileUrl,
      this.text});

  Station.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    id = json['id'];
    author = json['author'];
    authorBio = json['authorBio'];
    stationId = json['stationId'];
    placeId = json['placeId'];
    audioFileUrl = json['audioFileUrl'];
    text = json['text'];
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
    data['text'] = this.text;
    return data;
  }
}
