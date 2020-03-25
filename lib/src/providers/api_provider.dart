import 'package:edk_mobile_v3/src/models/edition_state.dart';
import 'package:edk_mobile_v3/src/models/meditation.dart';
import 'package:edk_mobile_v3/src/models/route.dart';
import 'package:edk_mobile_v3/src/models/station.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiProvider {
  ApiProvider._privateConstructor();

  static final ApiProvider _instance = ApiProvider._privateConstructor();

  factory ApiProvider() {
    return _instance;
  }

  final _baseUrl = "https://mobileapi.edk.org.pl/mobile/";

  Future<EditionState> fetchEditionState() async {
    final response = await http.get("$_baseUrl/verificationData");
    try {
      final parsedJson = json.decode(response.body);
      return EditionState.fromJson(parsedJson[0]);
    } catch (_) {
      return null;
    }
  }

  Future<List<Meditation>> fetchMeditationsList() async {
    final response = await http.get("$_baseUrl/meditationList");
    try {
      final parsedJson = json.decode(response.body);
      List<Meditation> meditations = parsedJson
          .map<Meditation>((json) => Meditation.fromJson(json))
          .toList();
      return meditations;
    } catch (_) {
      return null;
    }
  }

  Future<StationsResponse> fetchMeditationById(int id) async {
    final response =
        await http.get("$_baseUrl/meditationById?meditationId=$id");
    try {
      final parsedJson = json.decode(utf8.decode(response.bodyBytes));
      return StationsResponse.fromJson(parsedJson[0]);
    } catch (_) {
      return null;
    }
  }

  Future<RoutesResponse> fetchStations() async {
    final response = await http.get("$_baseUrl/allGeneralInfo");
    try {
      final parsedJson = json.decode(response.body);
      return RoutesResponse.fromJson(parsedJson);
    } catch (_) {
      return null;
    }
  }

  Future<UserRoutesResponse> fetchRoutePoints(int routeId) async {
    final response = await http.get("$_baseUrl/routePoints?id=$routeId");
    try {
      final parsedJson = json.decode(response.body);
      return UserRoutesResponse.fromJson(parsedJson);
    } catch (_) {
      return null;
    }
  }
}
