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
  DatabaseProvider._privateConstructor() : super(_openConnection());

  static final DatabaseProvider _instance =
      DatabaseProvider._privateConstructor();

  factory DatabaseProvider() {
    return _instance;
  }

  @override
  int get schemaVersion => 1;

  Stream<List<StationDbData>> watchStations(int meditationId) {
    return (select(stationDb)
          ..where((station) => station.meditationId.equals(meditationId)))
        .watch();
  }

  saveMeditations(List<MeditationDbData> meditations) async {
    delete(meditationDb).go();
    await batch((batch) {
      batch.insertAll(meditationDb, meditations);
    });
  }

  saveMeditationsLanguageVersions(
      List<MeditationLanguageVersionDbData> meditationsVersions,
      int meditationId) async {
    (delete(meditationLanguageVersionDb)
          ..where((meditationVersion) =>
              meditationVersion.meditationId.equals(meditationId)))
        .go();

    await batch((batch) {
      batch.insertAll(meditationLanguageVersionDb, meditationsVersions);
    });
  }

  saveStations(List<StationDbData> stations) async {
    delete(stationDb).go();
    await batch((batch) {
      batch.insertAll(stationDb, stations);
    });
  }
}
