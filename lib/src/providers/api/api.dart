import 'package:edk_mobile_v3/src/models/edition_state.dart';
import 'package:edk_mobile_v3/src/models/meditation.dart';
import 'package:edk_mobile_v3/src/models/route.dart';
import 'package:edk_mobile_v3/src/models/station.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'api_constants.dart';

class ApiProvider {
  ApiProvider._privateConstructor();

  static final ApiProvider _instance = ApiProvider._privateConstructor();

  factory ApiProvider() {
    return _instance;
  }

  /// General http GET function
  Future<dynamic> get(
      {@required String path, Map<String, String> params}) async {
    final uri = Uri.https("$kApiBaseUrl", path, params);

    try {
      final response = await http.get(uri);
      return json.decode(utf8.decode(response.bodyBytes));
    } on Exception {
      return null;
    }
  }

  Future<EditionState> fetchEditionState() async {
    try {
      final rawResponse = await get(path: kApiVerification);
      EditionState response = EditionState.fromJson(
        rawResponse[0],
      );
      return response;
    } catch (e) {
      return null;
    }
  }

  Future<List<Meditation>> fetchMeditationsList() async {
    try {
      final rawResponse = await get(path: kApiMeditationList);
      List<Meditation> meditations = rawResponse
          .map<Meditation>((json) => Meditation.fromJson(json))
          .toList();
      return meditations;
    } on Exception {
      return null;
    }
  }

  Future<StationsResponse> fetchMeditationById(int id) async {
    final params = {
      'meditationId': '$id',
    };
    try {
      final rawResponse = await get(path: kApiMeditationById, params: params);
      StationsResponse response = StationsResponse.fromJson(
        rawResponse[0],
      );
      return response;
    } on Exception {
      return null;
    }
  }

  Future<RoutesResponse> fetchStations() async {
    try {
      final rawResponse = await get(path: kApiGeneralInfo);
      RoutesResponse response = RoutesResponse.fromJson(
        rawResponse,
      );
      return response;
    } on Exception {
      return null;
    }
  }

  Future<UserRoutesResponse> fetchRoutePoints(int routeId) async {
    final params = {
      'id': '$routeId',
    };
    try {
      final rawResponse = await get(path: kApiRoutePoints, params: params);
      UserRoutesResponse response = UserRoutesResponse.fromJson(
        rawResponse,
      );
      return response;
    } on Exception {
      return null;
    }
  }
}
