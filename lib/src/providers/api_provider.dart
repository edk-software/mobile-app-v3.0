import 'package:edk_mobile_v3/src/models/edition_state.dart';
import 'package:edk_mobile_v3/src/models/meditation.dart';
import 'package:edk_mobile_v3/src/models/route.dart';
import 'package:edk_mobile_v3/src/models/station.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiProvider {
  final _baseUrl = "http://mobileapi.edk.org.pl/mobile/";

  Future<EditionState> fetchEditionState() async {
    final response = await http.get("$_baseUrl/verificationData");
    final parsedJson = json.decode(response.body);

    return EditionState.fromJson(parsedJson);
  }

  Future<MeditationsResponse> fetchMeditationsList() async {
    final response = await http.get("$_baseUrl/meditationList");
    final parsedJson = json.decode(response.body);

    return MeditationsResponse.fromJson(parsedJson);
  }

  Future<StationsResponse> fetchMeditationById(int id) async {
    final response =
        await http.get("$_baseUrl/meditationById?meditationId=$id");
    final parsedJson = json.decode(response.body);

    return StationsResponse.fromJson(parsedJson);
  }

  Future<RoutesResponse> fetchStations() async {
    final response = await http.get("$_baseUrl/allGeneralInfo");
    final parsedJson = json.decode(response.body);

    return RoutesResponse.fromJson(parsedJson);
  }

  Future<UserRoutesResponse> fetchRoutePoints(int routeId) async {
    final response = await http.get("$_baseUrl/routePoints?id=$routeId");
    final parsedJson = json.decode(response.body);

    return UserRoutesResponse.fromJson(parsedJson);
  }
}
