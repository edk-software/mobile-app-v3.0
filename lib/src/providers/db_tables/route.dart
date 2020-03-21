import 'package:moor/moor.dart';

class GroupDb extends Table {
  IntColumn get groupId => integer()();
  TextColumn get groupName => text().nullable()();

  @override
  Set<Column> get primaryKey => {groupId};
}

class AreaDb extends Table {
  IntColumn get areaId => integer()();
  TextColumn get areaName => text().nullable()();

  IntColumn get groupId => integer()();

  @override
  Set<Column> get primaryKey => {areaId};
}

class RouteDb extends Table {
  IntColumn get routeId => integer()();

  TextColumn get routeName => text().nullable()();
  TextColumn get routeFrom => text().nullable()();
  TextColumn get routeTo => text().nullable()();
  TextColumn get routeLenght => text().nullable()();
  TextColumn get routeAcent => text().nullable()();
  TextColumn get routeKmlFile => text().nullable()();
  TextColumn get routeDescriptionFile => text().nullable()();
  TextColumn get routeDescription => text().nullable()();
  TextColumn get routeLastUpdate => text().nullable()();

  IntColumn get areaId => integer()();

  @override
  Set<Column> get primaryKey => {routeId};
}
