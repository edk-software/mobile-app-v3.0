import 'package:moor/moor.dart';

class StationDb extends Table {
  TextColumn get title => text()();
  TextColumn get id => text()();
  TextColumn get author => text()();
  TextColumn get authorBio => text()();
  TextColumn get stationId => text()();
  TextColumn get placeId => text()();
  TextColumn get audioFileUrl => text()();
  TextColumn get stationText => text()();

  @override
  Set<Column> get primaryKey => {id};
}
