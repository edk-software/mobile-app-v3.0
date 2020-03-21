import 'package:moor/moor.dart';

class StationDb extends Table {
  TextColumn get title => text().nullable()();
  IntColumn get id => integer()();
  TextColumn get author => text().nullable()();
  TextColumn get authorBio => text().nullable()();
  IntColumn get stationId => integer().nullable()();
  TextColumn get placeId => text().nullable()();
  TextColumn get audioFileUrl => text().nullable()();
  TextColumn get stationText => text().nullable()();

  IntColumn get meditationId => integer()();

  @override
  Set<Column> get primaryKey => {id};
}
