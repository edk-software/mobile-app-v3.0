import 'package:edk_mobile_v3/src/models/edition_state.dart';
import 'package:edk_mobile_v3/src/models/meditation.dart';
import 'package:edk_mobile_v3/src/models/station.dart';
import 'package:rxdart/rxdart.dart';

import '../providers/api_provider.dart';
import '../providers/db_provider.dart';
import '../providers/sp_provider.dart';

class Repository {
  final _dbProvider = DatabaseProvider();
  final _spProvider = SharedPreferencesProvider();
  final _apiProvider = ApiProvider();

  fetchMeditations() async {
    EditionState editionState = await _apiProvider.fetchEditionState();
    if (editionState != null) {
      // Check if update is needed for Meditations
      if (editionState.meditationsLastUpdate !=
          _spProvider.getRoutesLastUpdate()) {
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

  Stream<List<Station>> watchStations() {
    int meditationId = 1;

    return _dbProvider
        .watchStations(meditationId)
        .flatMap((list) => Stream.fromIterable(list))
        .map((item) => Station.fromDbObject(item))
        .toList()
        .asStream();
  }
}
