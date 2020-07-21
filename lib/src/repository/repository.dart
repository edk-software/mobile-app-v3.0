import 'dart:async';

import 'package:edk_mobile_v3/src/models/edition_state.dart';
import 'package:edk_mobile_v3/src/models/meditation.dart';
import 'package:edk_mobile_v3/src/models/station.dart';

import '../providers/api/api.dart';
import '../providers/db_provider.dart';
import '../providers/sp_provider.dart';

class Repository {
  final _dbProvider = DatabaseProvider();
  final _spProvider = SharedPreferencesProvider();
  final _apiProvider = ApiProvider();

  fetchMeditations() async {
    EditionState editionState = await _apiProvider.fetchEditionState();
    int meditationsLastUpdate = await _spProvider.getMeditationsLastUpdate();
    if (editionState != null) {
      // Check if update is needed for Meditations
      if (editionState.meditationsLastUpdate != meditationsLastUpdate) {
        List<Meditation> meditations =
            await _apiProvider.fetchMeditationsList();

        // save meditations data
        _dbProvider.saveMeditations(meditations
            .map<MeditationDbData>((item) => item.toDbObject())
            .toList());

        // save meditation language versions
        meditations.forEach((meditation) {
          _dbProvider.saveMeditationsLanguageVersions(
              meditation.meditationLanguageVersions
                  .map<MeditationLanguageVersionDbData>(
                      (item) => item.toDbObject(meditation.id))
                  .toList(),
              meditation.id);
        });

        // save stations
        StationsResponse stationsResponse =
            await _apiProvider.fetchMeditationById(1);
        _dbProvider.saveStations(stationsResponse.stations
            .map<StationDbData>((item) => item.toDbObject(1))
            .toList());
      }

      // Save new Edition state into database
      _spProvider.setEditionState(editionState);
    }
  }

  Stream<int> watchCurrentEditionYear() {
    return _spProvider.watchCurrentEditionYear();
  }

  Stream<List<Station>> watchStations() {
    int meditationId = 1;

    return _dbProvider
        .watchStations(meditationId)
        .transform(mapStationDataFromDb);
  }

  final mapStationDataFromDb =
      StreamTransformer<List<StationDbData>, List<Station>>.fromHandlers(
          handleData: (stationDbData, sink) {
    var stations = List<Station>();
    stationDbData.forEach((element) {
      stations.add(Station.fromDbObject(element));
    });
    sink.add(stations);
  });
}
