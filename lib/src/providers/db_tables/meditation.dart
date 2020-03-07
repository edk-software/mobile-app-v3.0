import 'package:moor/moor.dart';

class MeditationDb extends Table {
  TextColumn get id => text()();
  TextColumn get year => text()();
  TextColumn get type => text()();

  @override
  Set<Column> get primaryKey => {id};
}

class MeditationLanguageVersionDb extends Table {
  TextColumn get languageName => text()();
  TextColumn get languageCode => text()();
  TextColumn get title => text()();
  TextColumn get id => text()();
  TextColumn get author => text()();
  TextColumn get authorBio => text()();

  TextColumn get meditationId => text()();

  @override
  Set<Column> get primaryKey => {id};
}
