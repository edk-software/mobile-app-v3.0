import 'dart:io';

import 'package:moor/moor.dart';
import 'package:moor_ffi/moor_ffi.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

import 'db_tables/meditation.dart';
import 'db_tables/route.dart';
import 'db_tables/station.dart';

part 'db_provider.g.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(join(dbFolder.path, 'db.sqlite'));
    return VmDatabase(file);
  });
}

@UseMoor(tables: [
  MeditationDb,
  MeditationLanguageVersionDb,
  GroupDb,
  AreaDb,
  RouteDb,
  StationDb
])
class DatabaseProvider extends _$DatabaseProvider {
  DatabaseProvider() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Stream<List<StationDbData>> watchStations(int meditationId) {
    return (select(stationDb)
          ..where((station) => station.meditationId.equals(meditationId)))
        .watch();
  }

  saveMeditations(List<MeditationDbData> meditations) async {
    delete(meditationDb);
    await batch((batch) {
      batch.insertAll(meditationDb, meditations);
    });
  }

  saveMeditationsLanguageVersions(
      List<MeditationLanguageVersionDbData> meditationsVersions,
      int meditationId) async {
    delete(meditationLanguageVersionDb)
        .where((tbl) => tbl.meditationId.equals(meditationId));

    await batch((batch) {
      batch.insertAll(meditationLanguageVersionDb, meditationsVersions);
    });
  }

  saveStations(List<StationDbData> stations) async {
    delete(stationDb);
    await batch((batch) {
      batch.insertAll(stationDb, stations);
    });
  }
}
