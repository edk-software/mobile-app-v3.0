import 'package:moor/moor.dart';

class GroupDb extends Table {
  IntColumn get groupId => integer()();
  TextColumn get groupName => text()();

  @override
  Set<Column> get primaryKey => {groupId};
}

class AreaDb extends Table {
  IntColumn get areaId => integer()();
  TextColumn get groupName => text()();

  IntColumn get groupId => integer()();

  @override
  Set<Column> get primaryKey => {areaId};
}

class RouteDb extends Table {
  IntColumn get routeId => integer()();

  TextColumn get routeName => text()();
  TextColumn get routeFrom => text()();
  TextColumn get routeTo => text()();
  TextColumn get routeLenght => text()();
  TextColumn get routeAcent => text()();
  TextColumn get routeKmlFile => text()();
  TextColumn get routeDescriptionFile => text()();
  TextColumn get routeDescription => text()();
  TextColumn get routeLastUpdate => text()();

  IntColumn get areaId => integer()();

  @override
  Set<Column> get primaryKey => {routeId};
}
