import 'package:moor/moor.dart';

class MeditationDb extends Table {
  IntColumn get id => integer()();
  IntColumn get year => integer().nullable()();
  TextColumn get type => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

class MeditationLanguageVersionDb extends Table {
  TextColumn get languageName => text().nullable()();
  TextColumn get languageCode => text().nullable()();
  TextColumn get title => text().nullable()();
  IntColumn get id => integer()();
  TextColumn get author => text().nullable()();
  TextColumn get authorBio => text().nullable()();

  IntColumn get meditationId => integer()();

  @override
  Set<Column> get primaryKey => {id};
}
