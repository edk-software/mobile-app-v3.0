// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db_provider.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class MeditationDbData extends DataClass
    implements Insertable<MeditationDbData> {
  final String id;
  final String year;
  final String type;
  MeditationDbData(
      {@required this.id, @required this.year, @required this.type});
  factory MeditationDbData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    return MeditationDbData(
      id: stringType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      year: stringType.mapFromDatabaseResponse(data['${effectivePrefix}year']),
      type: stringType.mapFromDatabaseResponse(data['${effectivePrefix}type']),
    );
  }
  factory MeditationDbData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return MeditationDbData(
      id: serializer.fromJson<String>(json['id']),
      year: serializer.fromJson<String>(json['year']),
      type: serializer.fromJson<String>(json['type']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'year': serializer.toJson<String>(year),
      'type': serializer.toJson<String>(type),
    };
  }

  @override
  MeditationDbCompanion createCompanion(bool nullToAbsent) {
    return MeditationDbCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      year: year == null && nullToAbsent ? const Value.absent() : Value(year),
      type: type == null && nullToAbsent ? const Value.absent() : Value(type),
    );
  }

  MeditationDbData copyWith({String id, String year, String type}) =>
      MeditationDbData(
        id: id ?? this.id,
        year: year ?? this.year,
        type: type ?? this.type,
      );
  @override
  String toString() {
    return (StringBuffer('MeditationDbData(')
          ..write('id: $id, ')
          ..write('year: $year, ')
          ..write('type: $type')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(id.hashCode, $mrjc(year.hashCode, type.hashCode)));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is MeditationDbData &&
          other.id == this.id &&
          other.year == this.year &&
          other.type == this.type);
}

class MeditationDbCompanion extends UpdateCompanion<MeditationDbData> {
  final Value<String> id;
  final Value<String> year;
  final Value<String> type;
  const MeditationDbCompanion({
    this.id = const Value.absent(),
    this.year = const Value.absent(),
    this.type = const Value.absent(),
  });
  MeditationDbCompanion.insert({
    @required String id,
    @required String year,
    @required String type,
  })  : id = Value(id),
        year = Value(year),
        type = Value(type);
  MeditationDbCompanion copyWith(
      {Value<String> id, Value<String> year, Value<String> type}) {
    return MeditationDbCompanion(
      id: id ?? this.id,
      year: year ?? this.year,
      type: type ?? this.type,
    );
  }
}

class $MeditationDbTable extends MeditationDb
    with TableInfo<$MeditationDbTable, MeditationDbData> {
  final GeneratedDatabase _db;
  final String _alias;
  $MeditationDbTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedTextColumn _id;
  @override
  GeneratedTextColumn get id => _id ??= _constructId();
  GeneratedTextColumn _constructId() {
    return GeneratedTextColumn(
      'id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _yearMeta = const VerificationMeta('year');
  GeneratedTextColumn _year;
  @override
  GeneratedTextColumn get year => _year ??= _constructYear();
  GeneratedTextColumn _constructYear() {
    return GeneratedTextColumn(
      'year',
      $tableName,
      false,
    );
  }

  final VerificationMeta _typeMeta = const VerificationMeta('type');
  GeneratedTextColumn _type;
  @override
  GeneratedTextColumn get type => _type ??= _constructType();
  GeneratedTextColumn _constructType() {
    return GeneratedTextColumn(
      'type',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, year, type];
  @override
  $MeditationDbTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'meditation_db';
  @override
  final String actualTableName = 'meditation_db';
  @override
  VerificationContext validateIntegrity(MeditationDbCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (d.year.present) {
      context.handle(
          _yearMeta, year.isAcceptableValue(d.year.value, _yearMeta));
    } else if (isInserting) {
      context.missing(_yearMeta);
    }
    if (d.type.present) {
      context.handle(
          _typeMeta, type.isAcceptableValue(d.type.value, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MeditationDbData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return MeditationDbData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(MeditationDbCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<String, StringType>(d.id.value);
    }
    if (d.year.present) {
      map['year'] = Variable<String, StringType>(d.year.value);
    }
    if (d.type.present) {
      map['type'] = Variable<String, StringType>(d.type.value);
    }
    return map;
  }

  @override
  $MeditationDbTable createAlias(String alias) {
    return $MeditationDbTable(_db, alias);
  }
}

class MeditationLanguageVersionDbData extends DataClass
    implements Insertable<MeditationLanguageVersionDbData> {
  final String languageName;
  final String languageCode;
  final String title;
  final String id;
  final String author;
  final String authorBio;
  final String meditationId;
  MeditationLanguageVersionDbData(
      {@required this.languageName,
      @required this.languageCode,
      @required this.title,
      @required this.id,
      @required this.author,
      @required this.authorBio,
      @required this.meditationId});
  factory MeditationLanguageVersionDbData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    return MeditationLanguageVersionDbData(
      languageName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}language_name']),
      languageCode: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}language_code']),
      title:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}title']),
      id: stringType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      author:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}author']),
      authorBio: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}author_bio']),
      meditationId: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}meditation_id']),
    );
  }
  factory MeditationLanguageVersionDbData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return MeditationLanguageVersionDbData(
      languageName: serializer.fromJson<String>(json['languageName']),
      languageCode: serializer.fromJson<String>(json['languageCode']),
      title: serializer.fromJson<String>(json['title']),
      id: serializer.fromJson<String>(json['id']),
      author: serializer.fromJson<String>(json['author']),
      authorBio: serializer.fromJson<String>(json['authorBio']),
      meditationId: serializer.fromJson<String>(json['meditationId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'languageName': serializer.toJson<String>(languageName),
      'languageCode': serializer.toJson<String>(languageCode),
      'title': serializer.toJson<String>(title),
      'id': serializer.toJson<String>(id),
      'author': serializer.toJson<String>(author),
      'authorBio': serializer.toJson<String>(authorBio),
      'meditationId': serializer.toJson<String>(meditationId),
    };
  }

  @override
  MeditationLanguageVersionDbCompanion createCompanion(bool nullToAbsent) {
    return MeditationLanguageVersionDbCompanion(
      languageName: languageName == null && nullToAbsent
          ? const Value.absent()
          : Value(languageName),
      languageCode: languageCode == null && nullToAbsent
          ? const Value.absent()
          : Value(languageCode),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      author:
          author == null && nullToAbsent ? const Value.absent() : Value(author),
      authorBio: authorBio == null && nullToAbsent
          ? const Value.absent()
          : Value(authorBio),
      meditationId: meditationId == null && nullToAbsent
          ? const Value.absent()
          : Value(meditationId),
    );
  }

  MeditationLanguageVersionDbData copyWith(
          {String languageName,
          String languageCode,
          String title,
          String id,
          String author,
          String authorBio,
          String meditationId}) =>
      MeditationLanguageVersionDbData(
        languageName: languageName ?? this.languageName,
        languageCode: languageCode ?? this.languageCode,
        title: title ?? this.title,
        id: id ?? this.id,
        author: author ?? this.author,
        authorBio: authorBio ?? this.authorBio,
        meditationId: meditationId ?? this.meditationId,
      );
  @override
  String toString() {
    return (StringBuffer('MeditationLanguageVersionDbData(')
          ..write('languageName: $languageName, ')
          ..write('languageCode: $languageCode, ')
          ..write('title: $title, ')
          ..write('id: $id, ')
          ..write('author: $author, ')
          ..write('authorBio: $authorBio, ')
          ..write('meditationId: $meditationId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      languageName.hashCode,
      $mrjc(
          languageCode.hashCode,
          $mrjc(
              title.hashCode,
              $mrjc(
                  id.hashCode,
                  $mrjc(author.hashCode,
                      $mrjc(authorBio.hashCode, meditationId.hashCode)))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is MeditationLanguageVersionDbData &&
          other.languageName == this.languageName &&
          other.languageCode == this.languageCode &&
          other.title == this.title &&
          other.id == this.id &&
          other.author == this.author &&
          other.authorBio == this.authorBio &&
          other.meditationId == this.meditationId);
}

class MeditationLanguageVersionDbCompanion
    extends UpdateCompanion<MeditationLanguageVersionDbData> {
  final Value<String> languageName;
  final Value<String> languageCode;
  final Value<String> title;
  final Value<String> id;
  final Value<String> author;
  final Value<String> authorBio;
  final Value<String> meditationId;
  const MeditationLanguageVersionDbCompanion({
    this.languageName = const Value.absent(),
    this.languageCode = const Value.absent(),
    this.title = const Value.absent(),
    this.id = const Value.absent(),
    this.author = const Value.absent(),
    this.authorBio = const Value.absent(),
    this.meditationId = const Value.absent(),
  });
  MeditationLanguageVersionDbCompanion.insert({
    @required String languageName,
    @required String languageCode,
    @required String title,
    @required String id,
    @required String author,
    @required String authorBio,
    @required String meditationId,
  })  : languageName = Value(languageName),
        languageCode = Value(languageCode),
        title = Value(title),
        id = Value(id),
        author = Value(author),
        authorBio = Value(authorBio),
        meditationId = Value(meditationId);
  MeditationLanguageVersionDbCompanion copyWith(
      {Value<String> languageName,
      Value<String> languageCode,
      Value<String> title,
      Value<String> id,
      Value<String> author,
      Value<String> authorBio,
      Value<String> meditationId}) {
    return MeditationLanguageVersionDbCompanion(
      languageName: languageName ?? this.languageName,
      languageCode: languageCode ?? this.languageCode,
      title: title ?? this.title,
      id: id ?? this.id,
      author: author ?? this.author,
      authorBio: authorBio ?? this.authorBio,
      meditationId: meditationId ?? this.meditationId,
    );
  }
}

class $MeditationLanguageVersionDbTable extends MeditationLanguageVersionDb
    with
        TableInfo<$MeditationLanguageVersionDbTable,
            MeditationLanguageVersionDbData> {
  final GeneratedDatabase _db;
  final String _alias;
  $MeditationLanguageVersionDbTable(this._db, [this._alias]);
  final VerificationMeta _languageNameMeta =
      const VerificationMeta('languageName');
  GeneratedTextColumn _languageName;
  @override
  GeneratedTextColumn get languageName =>
      _languageName ??= _constructLanguageName();
  GeneratedTextColumn _constructLanguageName() {
    return GeneratedTextColumn(
      'language_name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _languageCodeMeta =
      const VerificationMeta('languageCode');
  GeneratedTextColumn _languageCode;
  @override
  GeneratedTextColumn get languageCode =>
      _languageCode ??= _constructLanguageCode();
  GeneratedTextColumn _constructLanguageCode() {
    return GeneratedTextColumn(
      'language_code',
      $tableName,
      false,
    );
  }

  final VerificationMeta _titleMeta = const VerificationMeta('title');
  GeneratedTextColumn _title;
  @override
  GeneratedTextColumn get title => _title ??= _constructTitle();
  GeneratedTextColumn _constructTitle() {
    return GeneratedTextColumn(
      'title',
      $tableName,
      false,
    );
  }

  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedTextColumn _id;
  @override
  GeneratedTextColumn get id => _id ??= _constructId();
  GeneratedTextColumn _constructId() {
    return GeneratedTextColumn(
      'id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _authorMeta = const VerificationMeta('author');
  GeneratedTextColumn _author;
  @override
  GeneratedTextColumn get author => _author ??= _constructAuthor();
  GeneratedTextColumn _constructAuthor() {
    return GeneratedTextColumn(
      'author',
      $tableName,
      false,
    );
  }

  final VerificationMeta _authorBioMeta = const VerificationMeta('authorBio');
  GeneratedTextColumn _authorBio;
  @override
  GeneratedTextColumn get authorBio => _authorBio ??= _constructAuthorBio();
  GeneratedTextColumn _constructAuthorBio() {
    return GeneratedTextColumn(
      'author_bio',
      $tableName,
      false,
    );
  }

  final VerificationMeta _meditationIdMeta =
      const VerificationMeta('meditationId');
  GeneratedTextColumn _meditationId;
  @override
  GeneratedTextColumn get meditationId =>
      _meditationId ??= _constructMeditationId();
  GeneratedTextColumn _constructMeditationId() {
    return GeneratedTextColumn(
      'meditation_id',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [languageName, languageCode, title, id, author, authorBio, meditationId];
  @override
  $MeditationLanguageVersionDbTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'meditation_language_version_db';
  @override
  final String actualTableName = 'meditation_language_version_db';
  @override
  VerificationContext validateIntegrity(MeditationLanguageVersionDbCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.languageName.present) {
      context.handle(
          _languageNameMeta,
          languageName.isAcceptableValue(
              d.languageName.value, _languageNameMeta));
    } else if (isInserting) {
      context.missing(_languageNameMeta);
    }
    if (d.languageCode.present) {
      context.handle(
          _languageCodeMeta,
          languageCode.isAcceptableValue(
              d.languageCode.value, _languageCodeMeta));
    } else if (isInserting) {
      context.missing(_languageCodeMeta);
    }
    if (d.title.present) {
      context.handle(
          _titleMeta, title.isAcceptableValue(d.title.value, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (d.author.present) {
      context.handle(
          _authorMeta, author.isAcceptableValue(d.author.value, _authorMeta));
    } else if (isInserting) {
      context.missing(_authorMeta);
    }
    if (d.authorBio.present) {
      context.handle(_authorBioMeta,
          authorBio.isAcceptableValue(d.authorBio.value, _authorBioMeta));
    } else if (isInserting) {
      context.missing(_authorBioMeta);
    }
    if (d.meditationId.present) {
      context.handle(
          _meditationIdMeta,
          meditationId.isAcceptableValue(
              d.meditationId.value, _meditationIdMeta));
    } else if (isInserting) {
      context.missing(_meditationIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MeditationLanguageVersionDbData map(Map<String, dynamic> data,
      {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return MeditationLanguageVersionDbData.fromData(data, _db,
        prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(MeditationLanguageVersionDbCompanion d) {
    final map = <String, Variable>{};
    if (d.languageName.present) {
      map['language_name'] = Variable<String, StringType>(d.languageName.value);
    }
    if (d.languageCode.present) {
      map['language_code'] = Variable<String, StringType>(d.languageCode.value);
    }
    if (d.title.present) {
      map['title'] = Variable<String, StringType>(d.title.value);
    }
    if (d.id.present) {
      map['id'] = Variable<String, StringType>(d.id.value);
    }
    if (d.author.present) {
      map['author'] = Variable<String, StringType>(d.author.value);
    }
    if (d.authorBio.present) {
      map['author_bio'] = Variable<String, StringType>(d.authorBio.value);
    }
    if (d.meditationId.present) {
      map['meditation_id'] = Variable<String, StringType>(d.meditationId.value);
    }
    return map;
  }

  @override
  $MeditationLanguageVersionDbTable createAlias(String alias) {
    return $MeditationLanguageVersionDbTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $MeditationDbTable _meditationDb;
  $MeditationDbTable get meditationDb =>
      _meditationDb ??= $MeditationDbTable(this);
  $MeditationLanguageVersionDbTable _meditationLanguageVersionDb;
  $MeditationLanguageVersionDbTable get meditationLanguageVersionDb =>
      _meditationLanguageVersionDb ??= $MeditationLanguageVersionDbTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [meditationDb, meditationLanguageVersionDb];
}
