import 'dart:convert';

class MeditationsResponse {
  List<Meditation> meditations;

  MeditationsResponse({this.meditations});

  MeditationsResponse.fromJson(Map<String, dynamic> json) {
    meditations = jsonDecode(json.toString());
  }
}

class Meditation {
  String id;
  String year;
  String type;
  List<MeditationLanguageVersion> meditationLanguageVersions;

  Meditation({this.id, this.year, this.type, this.meditationLanguageVersions});

  Meditation.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    year = json['year'];
    type = json['type'];
    if (json['meditations'] != null) {
      meditationLanguageVersions = new List<MeditationLanguageVersion>();
      json['meditations'].forEach((v) {
        meditationLanguageVersions
            .add(new MeditationLanguageVersion.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['year'] = this.year;
    data['type'] = this.type;
    if (this.meditationLanguageVersions != null) {
      data['meditations'] =
          this.meditationLanguageVersions.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class MeditationLanguageVersion {
  String languageName;
  String languageCode;
  String title;
  String id;
  String author;
  String authorBio;

  MeditationLanguageVersion(
      {this.languageName,
      this.languageCode,
      this.title,
      this.id,
      this.author,
      this.authorBio});

  MeditationLanguageVersion.fromJson(Map<String, dynamic> json) {
    languageName = json['languageName'];
    languageCode = json['languageCode'];
    title = json['title'];
    id = json['id'];
    author = json['author'];
    authorBio = json['authorBio'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['languageName'] = this.languageName;
    data['languageCode'] = this.languageCode;
    data['title'] = this.title;
    data['id'] = this.id;
    data['author'] = this.author;
    data['authorBio'] = this.authorBio;
    return data;
  }
}
