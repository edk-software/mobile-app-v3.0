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

class GroupDbData extends DataClass implements Insertable<GroupDbData> {
  final int groupId;
  final String groupName;
  GroupDbData({@required this.groupId, @required this.groupName});
  factory GroupDbData.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return GroupDbData(
      groupId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}group_id']),
      groupName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}group_name']),
    );
  }
  factory GroupDbData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return GroupDbData(
      groupId: serializer.fromJson<int>(json['groupId']),
      groupName: serializer.fromJson<String>(json['groupName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'groupId': serializer.toJson<int>(groupId),
      'groupName': serializer.toJson<String>(groupName),
    };
  }

  @override
  GroupDbCompanion createCompanion(bool nullToAbsent) {
    return GroupDbCompanion(
      groupId: groupId == null && nullToAbsent
          ? const Value.absent()
          : Value(groupId),
      groupName: groupName == null && nullToAbsent
          ? const Value.absent()
          : Value(groupName),
    );
  }

  GroupDbData copyWith({int groupId, String groupName}) => GroupDbData(
        groupId: groupId ?? this.groupId,
        groupName: groupName ?? this.groupName,
      );
  @override
  String toString() {
    return (StringBuffer('GroupDbData(')
          ..write('groupId: $groupId, ')
          ..write('groupName: $groupName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(groupId.hashCode, groupName.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is GroupDbData &&
          other.groupId == this.groupId &&
          other.groupName == this.groupName);
}

class GroupDbCompanion extends UpdateCompanion<GroupDbData> {
  final Value<int> groupId;
  final Value<String> groupName;
  const GroupDbCompanion({
    this.groupId = const Value.absent(),
    this.groupName = const Value.absent(),
  });
  GroupDbCompanion.insert({
    @required int groupId,
    @required String groupName,
  })  : groupId = Value(groupId),
        groupName = Value(groupName);
  GroupDbCompanion copyWith({Value<int> groupId, Value<String> groupName}) {
    return GroupDbCompanion(
      groupId: groupId ?? this.groupId,
      groupName: groupName ?? this.groupName,
    );
  }
}

class $GroupDbTable extends GroupDb with TableInfo<$GroupDbTable, GroupDbData> {
  final GeneratedDatabase _db;
  final String _alias;
  $GroupDbTable(this._db, [this._alias]);
  final VerificationMeta _groupIdMeta = const VerificationMeta('groupId');
  GeneratedIntColumn _groupId;
  @override
  GeneratedIntColumn get groupId => _groupId ??= _constructGroupId();
  GeneratedIntColumn _constructGroupId() {
    return GeneratedIntColumn(
      'group_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _groupNameMeta = const VerificationMeta('groupName');
  GeneratedTextColumn _groupName;
  @override
  GeneratedTextColumn get groupName => _groupName ??= _constructGroupName();
  GeneratedTextColumn _constructGroupName() {
    return GeneratedTextColumn(
      'group_name',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [groupId, groupName];
  @override
  $GroupDbTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'group_db';
  @override
  final String actualTableName = 'group_db';
  @override
  VerificationContext validateIntegrity(GroupDbCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.groupId.present) {
      context.handle(_groupIdMeta,
          groupId.isAcceptableValue(d.groupId.value, _groupIdMeta));
    } else if (isInserting) {
      context.missing(_groupIdMeta);
    }
    if (d.groupName.present) {
      context.handle(_groupNameMeta,
          groupName.isAcceptableValue(d.groupName.value, _groupNameMeta));
    } else if (isInserting) {
      context.missing(_groupNameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {groupId};
  @override
  GroupDbData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return GroupDbData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(GroupDbCompanion d) {
    final map = <String, Variable>{};
    if (d.groupId.present) {
      map['group_id'] = Variable<int, IntType>(d.groupId.value);
    }
    if (d.groupName.present) {
      map['group_name'] = Variable<String, StringType>(d.groupName.value);
    }
    return map;
  }

  @override
  $GroupDbTable createAlias(String alias) {
    return $GroupDbTable(_db, alias);
  }
}

class AreaDbData extends DataClass implements Insertable<AreaDbData> {
  final int areaId;
  final String groupName;
  final int groupId;
  AreaDbData(
      {@required this.areaId,
      @required this.groupName,
      @required this.groupId});
  factory AreaDbData.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return AreaDbData(
      areaId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}area_id']),
      groupName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}group_name']),
      groupId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}group_id']),
    );
  }
  factory AreaDbData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return AreaDbData(
      areaId: serializer.fromJson<int>(json['areaId']),
      groupName: serializer.fromJson<String>(json['groupName']),
      groupId: serializer.fromJson<int>(json['groupId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'areaId': serializer.toJson<int>(areaId),
      'groupName': serializer.toJson<String>(groupName),
      'groupId': serializer.toJson<int>(groupId),
    };
  }

  @override
  AreaDbCompanion createCompanion(bool nullToAbsent) {
    return AreaDbCompanion(
      areaId:
          areaId == null && nullToAbsent ? const Value.absent() : Value(areaId),
      groupName: groupName == null && nullToAbsent
          ? const Value.absent()
          : Value(groupName),
      groupId: groupId == null && nullToAbsent
          ? const Value.absent()
          : Value(groupId),
    );
  }

  AreaDbData copyWith({int areaId, String groupName, int groupId}) =>
      AreaDbData(
        areaId: areaId ?? this.areaId,
        groupName: groupName ?? this.groupName,
        groupId: groupId ?? this.groupId,
      );
  @override
  String toString() {
    return (StringBuffer('AreaDbData(')
          ..write('areaId: $areaId, ')
          ..write('groupName: $groupName, ')
          ..write('groupId: $groupId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf(
      $mrjc(areaId.hashCode, $mrjc(groupName.hashCode, groupId.hashCode)));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is AreaDbData &&
          other.areaId == this.areaId &&
          other.groupName == this.groupName &&
          other.groupId == this.groupId);
}

class AreaDbCompanion extends UpdateCompanion<AreaDbData> {
  final Value<int> areaId;
  final Value<String> groupName;
  final Value<int> groupId;
  const AreaDbCompanion({
    this.areaId = const Value.absent(),
    this.groupName = const Value.absent(),
    this.groupId = const Value.absent(),
  });
  AreaDbCompanion.insert({
    @required int areaId,
    @required String groupName,
    @required int groupId,
  })  : areaId = Value(areaId),
        groupName = Value(groupName),
        groupId = Value(groupId);
  AreaDbCompanion copyWith(
      {Value<int> areaId, Value<String> groupName, Value<int> groupId}) {
    return AreaDbCompanion(
      areaId: areaId ?? this.areaId,
      groupName: groupName ?? this.groupName,
      groupId: groupId ?? this.groupId,
    );
  }
}

class $AreaDbTable extends AreaDb with TableInfo<$AreaDbTable, AreaDbData> {
  final GeneratedDatabase _db;
  final String _alias;
  $AreaDbTable(this._db, [this._alias]);
  final VerificationMeta _areaIdMeta = const VerificationMeta('areaId');
  GeneratedIntColumn _areaId;
  @override
  GeneratedIntColumn get areaId => _areaId ??= _constructAreaId();
  GeneratedIntColumn _constructAreaId() {
    return GeneratedIntColumn(
      'area_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _groupNameMeta = const VerificationMeta('groupName');
  GeneratedTextColumn _groupName;
  @override
  GeneratedTextColumn get groupName => _groupName ??= _constructGroupName();
  GeneratedTextColumn _constructGroupName() {
    return GeneratedTextColumn(
      'group_name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _groupIdMeta = const VerificationMeta('groupId');
  GeneratedIntColumn _groupId;
  @override
  GeneratedIntColumn get groupId => _groupId ??= _constructGroupId();
  GeneratedIntColumn _constructGroupId() {
    return GeneratedIntColumn(
      'group_id',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [areaId, groupName, groupId];
  @override
  $AreaDbTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'area_db';
  @override
  final String actualTableName = 'area_db';
  @override
  VerificationContext validateIntegrity(AreaDbCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.areaId.present) {
      context.handle(
          _areaIdMeta, areaId.isAcceptableValue(d.areaId.value, _areaIdMeta));
    } else if (isInserting) {
      context.missing(_areaIdMeta);
    }
    if (d.groupName.present) {
      context.handle(_groupNameMeta,
          groupName.isAcceptableValue(d.groupName.value, _groupNameMeta));
    } else if (isInserting) {
      context.missing(_groupNameMeta);
    }
    if (d.groupId.present) {
      context.handle(_groupIdMeta,
          groupId.isAcceptableValue(d.groupId.value, _groupIdMeta));
    } else if (isInserting) {
      context.missing(_groupIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {areaId};
  @override
  AreaDbData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return AreaDbData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(AreaDbCompanion d) {
    final map = <String, Variable>{};
    if (d.areaId.present) {
      map['area_id'] = Variable<int, IntType>(d.areaId.value);
    }
    if (d.groupName.present) {
      map['group_name'] = Variable<String, StringType>(d.groupName.value);
    }
    if (d.groupId.present) {
      map['group_id'] = Variable<int, IntType>(d.groupId.value);
    }
    return map;
  }

  @override
  $AreaDbTable createAlias(String alias) {
    return $AreaDbTable(_db, alias);
  }
}

class RouteDbData extends DataClass implements Insertable<RouteDbData> {
  final int routeId;
  final String routeName;
  final String routeFrom;
  final String routeTo;
  final String routeLenght;
  final String routeAcent;
  final String routeKmlFile;
  final String routeDescriptionFile;
  final String routeDescription;
  final String routeLastUpdate;
  final int areaId;
  RouteDbData(
      {@required this.routeId,
      @required this.routeName,
      @required this.routeFrom,
      @required this.routeTo,
      @required this.routeLenght,
      @required this.routeAcent,
      @required this.routeKmlFile,
      @required this.routeDescriptionFile,
      @required this.routeDescription,
      @required this.routeLastUpdate,
      @required this.areaId});
  factory RouteDbData.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return RouteDbData(
      routeId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}route_id']),
      routeName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}route_name']),
      routeFrom: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}route_from']),
      routeTo: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}route_to']),
      routeLenght: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}route_lenght']),
      routeAcent: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}route_acent']),
      routeKmlFile: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}route_kml_file']),
      routeDescriptionFile: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}route_description_file']),
      routeDescription: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}route_description']),
      routeLastUpdate: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}route_last_update']),
      areaId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}area_id']),
    );
  }
  factory RouteDbData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return RouteDbData(
      routeId: serializer.fromJson<int>(json['routeId']),
      routeName: serializer.fromJson<String>(json['routeName']),
      routeFrom: serializer.fromJson<String>(json['routeFrom']),
      routeTo: serializer.fromJson<String>(json['routeTo']),
      routeLenght: serializer.fromJson<String>(json['routeLenght']),
      routeAcent: serializer.fromJson<String>(json['routeAcent']),
      routeKmlFile: serializer.fromJson<String>(json['routeKmlFile']),
      routeDescriptionFile:
          serializer.fromJson<String>(json['routeDescriptionFile']),
      routeDescription: serializer.fromJson<String>(json['routeDescription']),
      routeLastUpdate: serializer.fromJson<String>(json['routeLastUpdate']),
      areaId: serializer.fromJson<int>(json['areaId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'routeId': serializer.toJson<int>(routeId),
      'routeName': serializer.toJson<String>(routeName),
      'routeFrom': serializer.toJson<String>(routeFrom),
      'routeTo': serializer.toJson<String>(routeTo),
      'routeLenght': serializer.toJson<String>(routeLenght),
      'routeAcent': serializer.toJson<String>(routeAcent),
      'routeKmlFile': serializer.toJson<String>(routeKmlFile),
      'routeDescriptionFile': serializer.toJson<String>(routeDescriptionFile),
      'routeDescription': serializer.toJson<String>(routeDescription),
      'routeLastUpdate': serializer.toJson<String>(routeLastUpdate),
      'areaId': serializer.toJson<int>(areaId),
    };
  }

  @override
  RouteDbCompanion createCompanion(bool nullToAbsent) {
    return RouteDbCompanion(
      routeId: routeId == null && nullToAbsent
          ? const Value.absent()
          : Value(routeId),
      routeName: routeName == null && nullToAbsent
          ? const Value.absent()
          : Value(routeName),
      routeFrom: routeFrom == null && nullToAbsent
          ? const Value.absent()
          : Value(routeFrom),
      routeTo: routeTo == null && nullToAbsent
          ? const Value.absent()
          : Value(routeTo),
      routeLenght: routeLenght == null && nullToAbsent
          ? const Value.absent()
          : Value(routeLenght),
      routeAcent: routeAcent == null && nullToAbsent
          ? const Value.absent()
          : Value(routeAcent),
      routeKmlFile: routeKmlFile == null && nullToAbsent
          ? const Value.absent()
          : Value(routeKmlFile),
      routeDescriptionFile: routeDescriptionFile == null && nullToAbsent
          ? const Value.absent()
          : Value(routeDescriptionFile),
      routeDescription: routeDescription == null && nullToAbsent
          ? const Value.absent()
          : Value(routeDescription),
      routeLastUpdate: routeLastUpdate == null && nullToAbsent
          ? const Value.absent()
          : Value(routeLastUpdate),
      areaId:
          areaId == null && nullToAbsent ? const Value.absent() : Value(areaId),
    );
  }

  RouteDbData copyWith(
          {int routeId,
          String routeName,
          String routeFrom,
          String routeTo,
          String routeLenght,
          String routeAcent,
          String routeKmlFile,
          String routeDescriptionFile,
          String routeDescription,
          String routeLastUpdate,
          int areaId}) =>
      RouteDbData(
        routeId: routeId ?? this.routeId,
        routeName: routeName ?? this.routeName,
        routeFrom: routeFrom ?? this.routeFrom,
        routeTo: routeTo ?? this.routeTo,
        routeLenght: routeLenght ?? this.routeLenght,
        routeAcent: routeAcent ?? this.routeAcent,
        routeKmlFile: routeKmlFile ?? this.routeKmlFile,
        routeDescriptionFile: routeDescriptionFile ?? this.routeDescriptionFile,
        routeDescription: routeDescription ?? this.routeDescription,
        routeLastUpdate: routeLastUpdate ?? this.routeLastUpdate,
        areaId: areaId ?? this.areaId,
      );
  @override
  String toString() {
    return (StringBuffer('RouteDbData(')
          ..write('routeId: $routeId, ')
          ..write('routeName: $routeName, ')
          ..write('routeFrom: $routeFrom, ')
          ..write('routeTo: $routeTo, ')
          ..write('routeLenght: $routeLenght, ')
          ..write('routeAcent: $routeAcent, ')
          ..write('routeKmlFile: $routeKmlFile, ')
          ..write('routeDescriptionFile: $routeDescriptionFile, ')
          ..write('routeDescription: $routeDescription, ')
          ..write('routeLastUpdate: $routeLastUpdate, ')
          ..write('areaId: $areaId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      routeId.hashCode,
      $mrjc(
          routeName.hashCode,
          $mrjc(
              routeFrom.hashCode,
              $mrjc(
                  routeTo.hashCode,
                  $mrjc(
                      routeLenght.hashCode,
                      $mrjc(
                          routeAcent.hashCode,
                          $mrjc(
                              routeKmlFile.hashCode,
                              $mrjc(
                                  routeDescriptionFile.hashCode,
                                  $mrjc(
                                      routeDescription.hashCode,
                                      $mrjc(routeLastUpdate.hashCode,
                                          areaId.hashCode)))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is RouteDbData &&
          other.routeId == this.routeId &&
          other.routeName == this.routeName &&
          other.routeFrom == this.routeFrom &&
          other.routeTo == this.routeTo &&
          other.routeLenght == this.routeLenght &&
          other.routeAcent == this.routeAcent &&
          other.routeKmlFile == this.routeKmlFile &&
          other.routeDescriptionFile == this.routeDescriptionFile &&
          other.routeDescription == this.routeDescription &&
          other.routeLastUpdate == this.routeLastUpdate &&
          other.areaId == this.areaId);
}

class RouteDbCompanion extends UpdateCompanion<RouteDbData> {
  final Value<int> routeId;
  final Value<String> routeName;
  final Value<String> routeFrom;
  final Value<String> routeTo;
  final Value<String> routeLenght;
  final Value<String> routeAcent;
  final Value<String> routeKmlFile;
  final Value<String> routeDescriptionFile;
  final Value<String> routeDescription;
  final Value<String> routeLastUpdate;
  final Value<int> areaId;
  const RouteDbCompanion({
    this.routeId = const Value.absent(),
    this.routeName = const Value.absent(),
    this.routeFrom = const Value.absent(),
    this.routeTo = const Value.absent(),
    this.routeLenght = const Value.absent(),
    this.routeAcent = const Value.absent(),
    this.routeKmlFile = const Value.absent(),
    this.routeDescriptionFile = const Value.absent(),
    this.routeDescription = const Value.absent(),
    this.routeLastUpdate = const Value.absent(),
    this.areaId = const Value.absent(),
  });
  RouteDbCompanion.insert({
    @required int routeId,
    @required String routeName,
    @required String routeFrom,
    @required String routeTo,
    @required String routeLenght,
    @required String routeAcent,
    @required String routeKmlFile,
    @required String routeDescriptionFile,
    @required String routeDescription,
    @required String routeLastUpdate,
    @required int areaId,
  })  : routeId = Value(routeId),
        routeName = Value(routeName),
        routeFrom = Value(routeFrom),
        routeTo = Value(routeTo),
        routeLenght = Value(routeLenght),
        routeAcent = Value(routeAcent),
        routeKmlFile = Value(routeKmlFile),
        routeDescriptionFile = Value(routeDescriptionFile),
        routeDescription = Value(routeDescription),
        routeLastUpdate = Value(routeLastUpdate),
        areaId = Value(areaId);
  RouteDbCompanion copyWith(
      {Value<int> routeId,
      Value<String> routeName,
      Value<String> routeFrom,
      Value<String> routeTo,
      Value<String> routeLenght,
      Value<String> routeAcent,
      Value<String> routeKmlFile,
      Value<String> routeDescriptionFile,
      Value<String> routeDescription,
      Value<String> routeLastUpdate,
      Value<int> areaId}) {
    return RouteDbCompanion(
      routeId: routeId ?? this.routeId,
      routeName: routeName ?? this.routeName,
      routeFrom: routeFrom ?? this.routeFrom,
      routeTo: routeTo ?? this.routeTo,
      routeLenght: routeLenght ?? this.routeLenght,
      routeAcent: routeAcent ?? this.routeAcent,
      routeKmlFile: routeKmlFile ?? this.routeKmlFile,
      routeDescriptionFile: routeDescriptionFile ?? this.routeDescriptionFile,
      routeDescription: routeDescription ?? this.routeDescription,
      routeLastUpdate: routeLastUpdate ?? this.routeLastUpdate,
      areaId: areaId ?? this.areaId,
    );
  }
}

class $RouteDbTable extends RouteDb with TableInfo<$RouteDbTable, RouteDbData> {
  final GeneratedDatabase _db;
  final String _alias;
  $RouteDbTable(this._db, [this._alias]);
  final VerificationMeta _routeIdMeta = const VerificationMeta('routeId');
  GeneratedIntColumn _routeId;
  @override
  GeneratedIntColumn get routeId => _routeId ??= _constructRouteId();
  GeneratedIntColumn _constructRouteId() {
    return GeneratedIntColumn(
      'route_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _routeNameMeta = const VerificationMeta('routeName');
  GeneratedTextColumn _routeName;
  @override
  GeneratedTextColumn get routeName => _routeName ??= _constructRouteName();
  GeneratedTextColumn _constructRouteName() {
    return GeneratedTextColumn(
      'route_name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _routeFromMeta = const VerificationMeta('routeFrom');
  GeneratedTextColumn _routeFrom;
  @override
  GeneratedTextColumn get routeFrom => _routeFrom ??= _constructRouteFrom();
  GeneratedTextColumn _constructRouteFrom() {
    return GeneratedTextColumn(
      'route_from',
      $tableName,
      false,
    );
  }

  final VerificationMeta _routeToMeta = const VerificationMeta('routeTo');
  GeneratedTextColumn _routeTo;
  @override
  GeneratedTextColumn get routeTo => _routeTo ??= _constructRouteTo();
  GeneratedTextColumn _constructRouteTo() {
    return GeneratedTextColumn(
      'route_to',
      $tableName,
      false,
    );
  }

  final VerificationMeta _routeLenghtMeta =
      const VerificationMeta('routeLenght');
  GeneratedTextColumn _routeLenght;
  @override
  GeneratedTextColumn get routeLenght =>
      _routeLenght ??= _constructRouteLenght();
  GeneratedTextColumn _constructRouteLenght() {
    return GeneratedTextColumn(
      'route_lenght',
      $tableName,
      false,
    );
  }

  final VerificationMeta _routeAcentMeta = const VerificationMeta('routeAcent');
  GeneratedTextColumn _routeAcent;
  @override
  GeneratedTextColumn get routeAcent => _routeAcent ??= _constructRouteAcent();
  GeneratedTextColumn _constructRouteAcent() {
    return GeneratedTextColumn(
      'route_acent',
      $tableName,
      false,
    );
  }

  final VerificationMeta _routeKmlFileMeta =
      const VerificationMeta('routeKmlFile');
  GeneratedTextColumn _routeKmlFile;
  @override
  GeneratedTextColumn get routeKmlFile =>
      _routeKmlFile ??= _constructRouteKmlFile();
  GeneratedTextColumn _constructRouteKmlFile() {
    return GeneratedTextColumn(
      'route_kml_file',
      $tableName,
      false,
    );
  }

  final VerificationMeta _routeDescriptionFileMeta =
      const VerificationMeta('routeDescriptionFile');
  GeneratedTextColumn _routeDescriptionFile;
  @override
  GeneratedTextColumn get routeDescriptionFile =>
      _routeDescriptionFile ??= _constructRouteDescriptionFile();
  GeneratedTextColumn _constructRouteDescriptionFile() {
    return GeneratedTextColumn(
      'route_description_file',
      $tableName,
      false,
    );
  }

  final VerificationMeta _routeDescriptionMeta =
      const VerificationMeta('routeDescription');
  GeneratedTextColumn _routeDescription;
  @override
  GeneratedTextColumn get routeDescription =>
      _routeDescription ??= _constructRouteDescription();
  GeneratedTextColumn _constructRouteDescription() {
    return GeneratedTextColumn(
      'route_description',
      $tableName,
      false,
    );
  }

  final VerificationMeta _routeLastUpdateMeta =
      const VerificationMeta('routeLastUpdate');
  GeneratedTextColumn _routeLastUpdate;
  @override
  GeneratedTextColumn get routeLastUpdate =>
      _routeLastUpdate ??= _constructRouteLastUpdate();
  GeneratedTextColumn _constructRouteLastUpdate() {
    return GeneratedTextColumn(
      'route_last_update',
      $tableName,
      false,
    );
  }

  final VerificationMeta _areaIdMeta = const VerificationMeta('areaId');
  GeneratedIntColumn _areaId;
  @override
  GeneratedIntColumn get areaId => _areaId ??= _constructAreaId();
  GeneratedIntColumn _constructAreaId() {
    return GeneratedIntColumn(
      'area_id',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        routeId,
        routeName,
        routeFrom,
        routeTo,
        routeLenght,
        routeAcent,
        routeKmlFile,
        routeDescriptionFile,
        routeDescription,
        routeLastUpdate,
        areaId
      ];
  @override
  $RouteDbTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'route_db';
  @override
  final String actualTableName = 'route_db';
  @override
  VerificationContext validateIntegrity(RouteDbCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.routeId.present) {
      context.handle(_routeIdMeta,
          routeId.isAcceptableValue(d.routeId.value, _routeIdMeta));
    } else if (isInserting) {
      context.missing(_routeIdMeta);
    }
    if (d.routeName.present) {
      context.handle(_routeNameMeta,
          routeName.isAcceptableValue(d.routeName.value, _routeNameMeta));
    } else if (isInserting) {
      context.missing(_routeNameMeta);
    }
    if (d.routeFrom.present) {
      context.handle(_routeFromMeta,
          routeFrom.isAcceptableValue(d.routeFrom.value, _routeFromMeta));
    } else if (isInserting) {
      context.missing(_routeFromMeta);
    }
    if (d.routeTo.present) {
      context.handle(_routeToMeta,
          routeTo.isAcceptableValue(d.routeTo.value, _routeToMeta));
    } else if (isInserting) {
      context.missing(_routeToMeta);
    }
    if (d.routeLenght.present) {
      context.handle(_routeLenghtMeta,
          routeLenght.isAcceptableValue(d.routeLenght.value, _routeLenghtMeta));
    } else if (isInserting) {
      context.missing(_routeLenghtMeta);
    }
    if (d.routeAcent.present) {
      context.handle(_routeAcentMeta,
          routeAcent.isAcceptableValue(d.routeAcent.value, _routeAcentMeta));
    } else if (isInserting) {
      context.missing(_routeAcentMeta);
    }
    if (d.routeKmlFile.present) {
      context.handle(
          _routeKmlFileMeta,
          routeKmlFile.isAcceptableValue(
              d.routeKmlFile.value, _routeKmlFileMeta));
    } else if (isInserting) {
      context.missing(_routeKmlFileMeta);
    }
    if (d.routeDescriptionFile.present) {
      context.handle(
          _routeDescriptionFileMeta,
          routeDescriptionFile.isAcceptableValue(
              d.routeDescriptionFile.value, _routeDescriptionFileMeta));
    } else if (isInserting) {
      context.missing(_routeDescriptionFileMeta);
    }
    if (d.routeDescription.present) {
      context.handle(
          _routeDescriptionMeta,
          routeDescription.isAcceptableValue(
              d.routeDescription.value, _routeDescriptionMeta));
    } else if (isInserting) {
      context.missing(_routeDescriptionMeta);
    }
    if (d.routeLastUpdate.present) {
      context.handle(
          _routeLastUpdateMeta,
          routeLastUpdate.isAcceptableValue(
              d.routeLastUpdate.value, _routeLastUpdateMeta));
    } else if (isInserting) {
      context.missing(_routeLastUpdateMeta);
    }
    if (d.areaId.present) {
      context.handle(
          _areaIdMeta, areaId.isAcceptableValue(d.areaId.value, _areaIdMeta));
    } else if (isInserting) {
      context.missing(_areaIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {routeId};
  @override
  RouteDbData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return RouteDbData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(RouteDbCompanion d) {
    final map = <String, Variable>{};
    if (d.routeId.present) {
      map['route_id'] = Variable<int, IntType>(d.routeId.value);
    }
    if (d.routeName.present) {
      map['route_name'] = Variable<String, StringType>(d.routeName.value);
    }
    if (d.routeFrom.present) {
      map['route_from'] = Variable<String, StringType>(d.routeFrom.value);
    }
    if (d.routeTo.present) {
      map['route_to'] = Variable<String, StringType>(d.routeTo.value);
    }
    if (d.routeLenght.present) {
      map['route_lenght'] = Variable<String, StringType>(d.routeLenght.value);
    }
    if (d.routeAcent.present) {
      map['route_acent'] = Variable<String, StringType>(d.routeAcent.value);
    }
    if (d.routeKmlFile.present) {
      map['route_kml_file'] =
          Variable<String, StringType>(d.routeKmlFile.value);
    }
    if (d.routeDescriptionFile.present) {
      map['route_description_file'] =
          Variable<String, StringType>(d.routeDescriptionFile.value);
    }
    if (d.routeDescription.present) {
      map['route_description'] =
          Variable<String, StringType>(d.routeDescription.value);
    }
    if (d.routeLastUpdate.present) {
      map['route_last_update'] =
          Variable<String, StringType>(d.routeLastUpdate.value);
    }
    if (d.areaId.present) {
      map['area_id'] = Variable<int, IntType>(d.areaId.value);
    }
    return map;
  }

  @override
  $RouteDbTable createAlias(String alias) {
    return $RouteDbTable(_db, alias);
  }
}

class StationDbData extends DataClass implements Insertable<StationDbData> {
  final String title;
  final String id;
  final String author;
  final String authorBio;
  final String stationId;
  final String placeId;
  final String audioFileUrl;
  final String stationText;
  StationDbData(
      {@required this.title,
      @required this.id,
      @required this.author,
      @required this.authorBio,
      @required this.stationId,
      @required this.placeId,
      @required this.audioFileUrl,
      @required this.stationText});
  factory StationDbData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    return StationDbData(
      title:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}title']),
      id: stringType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      author:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}author']),
      authorBio: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}author_bio']),
      stationId: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}station_id']),
      placeId: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}place_id']),
      audioFileUrl: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}audio_file_url']),
      stationText: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}station_text']),
    );
  }
  factory StationDbData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return StationDbData(
      title: serializer.fromJson<String>(json['title']),
      id: serializer.fromJson<String>(json['id']),
      author: serializer.fromJson<String>(json['author']),
      authorBio: serializer.fromJson<String>(json['authorBio']),
      stationId: serializer.fromJson<String>(json['stationId']),
      placeId: serializer.fromJson<String>(json['placeId']),
      audioFileUrl: serializer.fromJson<String>(json['audioFileUrl']),
      stationText: serializer.fromJson<String>(json['stationText']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'title': serializer.toJson<String>(title),
      'id': serializer.toJson<String>(id),
      'author': serializer.toJson<String>(author),
      'authorBio': serializer.toJson<String>(authorBio),
      'stationId': serializer.toJson<String>(stationId),
      'placeId': serializer.toJson<String>(placeId),
      'audioFileUrl': serializer.toJson<String>(audioFileUrl),
      'stationText': serializer.toJson<String>(stationText),
    };
  }

  @override
  StationDbCompanion createCompanion(bool nullToAbsent) {
    return StationDbCompanion(
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      author:
          author == null && nullToAbsent ? const Value.absent() : Value(author),
      authorBio: authorBio == null && nullToAbsent
          ? const Value.absent()
          : Value(authorBio),
      stationId: stationId == null && nullToAbsent
          ? const Value.absent()
          : Value(stationId),
      placeId: placeId == null && nullToAbsent
          ? const Value.absent()
          : Value(placeId),
      audioFileUrl: audioFileUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(audioFileUrl),
      stationText: stationText == null && nullToAbsent
          ? const Value.absent()
          : Value(stationText),
    );
  }

  StationDbData copyWith(
          {String title,
          String id,
          String author,
          String authorBio,
          String stationId,
          String placeId,
          String audioFileUrl,
          String stationText}) =>
      StationDbData(
        title: title ?? this.title,
        id: id ?? this.id,
        author: author ?? this.author,
        authorBio: authorBio ?? this.authorBio,
        stationId: stationId ?? this.stationId,
        placeId: placeId ?? this.placeId,
        audioFileUrl: audioFileUrl ?? this.audioFileUrl,
        stationText: stationText ?? this.stationText,
      );
  @override
  String toString() {
    return (StringBuffer('StationDbData(')
          ..write('title: $title, ')
          ..write('id: $id, ')
          ..write('author: $author, ')
          ..write('authorBio: $authorBio, ')
          ..write('stationId: $stationId, ')
          ..write('placeId: $placeId, ')
          ..write('audioFileUrl: $audioFileUrl, ')
          ..write('stationText: $stationText')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      title.hashCode,
      $mrjc(
          id.hashCode,
          $mrjc(
              author.hashCode,
              $mrjc(
                  authorBio.hashCode,
                  $mrjc(
                      stationId.hashCode,
                      $mrjc(
                          placeId.hashCode,
                          $mrjc(audioFileUrl.hashCode,
                              stationText.hashCode))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is StationDbData &&
          other.title == this.title &&
          other.id == this.id &&
          other.author == this.author &&
          other.authorBio == this.authorBio &&
          other.stationId == this.stationId &&
          other.placeId == this.placeId &&
          other.audioFileUrl == this.audioFileUrl &&
          other.stationText == this.stationText);
}

class StationDbCompanion extends UpdateCompanion<StationDbData> {
  final Value<String> title;
  final Value<String> id;
  final Value<String> author;
  final Value<String> authorBio;
  final Value<String> stationId;
  final Value<String> placeId;
  final Value<String> audioFileUrl;
  final Value<String> stationText;
  const StationDbCompanion({
    this.title = const Value.absent(),
    this.id = const Value.absent(),
    this.author = const Value.absent(),
    this.authorBio = const Value.absent(),
    this.stationId = const Value.absent(),
    this.placeId = const Value.absent(),
    this.audioFileUrl = const Value.absent(),
    this.stationText = const Value.absent(),
  });
  StationDbCompanion.insert({
    @required String title,
    @required String id,
    @required String author,
    @required String authorBio,
    @required String stationId,
    @required String placeId,
    @required String audioFileUrl,
    @required String stationText,
  })  : title = Value(title),
        id = Value(id),
        author = Value(author),
        authorBio = Value(authorBio),
        stationId = Value(stationId),
        placeId = Value(placeId),
        audioFileUrl = Value(audioFileUrl),
        stationText = Value(stationText);
  StationDbCompanion copyWith(
      {Value<String> title,
      Value<String> id,
      Value<String> author,
      Value<String> authorBio,
      Value<String> stationId,
      Value<String> placeId,
      Value<String> audioFileUrl,
      Value<String> stationText}) {
    return StationDbCompanion(
      title: title ?? this.title,
      id: id ?? this.id,
      author: author ?? this.author,
      authorBio: authorBio ?? this.authorBio,
      stationId: stationId ?? this.stationId,
      placeId: placeId ?? this.placeId,
      audioFileUrl: audioFileUrl ?? this.audioFileUrl,
      stationText: stationText ?? this.stationText,
    );
  }
}

class $StationDbTable extends StationDb
    with TableInfo<$StationDbTable, StationDbData> {
  final GeneratedDatabase _db;
  final String _alias;
  $StationDbTable(this._db, [this._alias]);
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

  final VerificationMeta _stationIdMeta = const VerificationMeta('stationId');
  GeneratedTextColumn _stationId;
  @override
  GeneratedTextColumn get stationId => _stationId ??= _constructStationId();
  GeneratedTextColumn _constructStationId() {
    return GeneratedTextColumn(
      'station_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _placeIdMeta = const VerificationMeta('placeId');
  GeneratedTextColumn _placeId;
  @override
  GeneratedTextColumn get placeId => _placeId ??= _constructPlaceId();
  GeneratedTextColumn _constructPlaceId() {
    return GeneratedTextColumn(
      'place_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _audioFileUrlMeta =
      const VerificationMeta('audioFileUrl');
  GeneratedTextColumn _audioFileUrl;
  @override
  GeneratedTextColumn get audioFileUrl =>
      _audioFileUrl ??= _constructAudioFileUrl();
  GeneratedTextColumn _constructAudioFileUrl() {
    return GeneratedTextColumn(
      'audio_file_url',
      $tableName,
      false,
    );
  }

  final VerificationMeta _stationTextMeta =
      const VerificationMeta('stationText');
  GeneratedTextColumn _stationText;
  @override
  GeneratedTextColumn get stationText =>
      _stationText ??= _constructStationText();
  GeneratedTextColumn _constructStationText() {
    return GeneratedTextColumn(
      'station_text',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        title,
        id,
        author,
        authorBio,
        stationId,
        placeId,
        audioFileUrl,
        stationText
      ];
  @override
  $StationDbTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'station_db';
  @override
  final String actualTableName = 'station_db';
  @override
  VerificationContext validateIntegrity(StationDbCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
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
    if (d.stationId.present) {
      context.handle(_stationIdMeta,
          stationId.isAcceptableValue(d.stationId.value, _stationIdMeta));
    } else if (isInserting) {
      context.missing(_stationIdMeta);
    }
    if (d.placeId.present) {
      context.handle(_placeIdMeta,
          placeId.isAcceptableValue(d.placeId.value, _placeIdMeta));
    } else if (isInserting) {
      context.missing(_placeIdMeta);
    }
    if (d.audioFileUrl.present) {
      context.handle(
          _audioFileUrlMeta,
          audioFileUrl.isAcceptableValue(
              d.audioFileUrl.value, _audioFileUrlMeta));
    } else if (isInserting) {
      context.missing(_audioFileUrlMeta);
    }
    if (d.stationText.present) {
      context.handle(_stationTextMeta,
          stationText.isAcceptableValue(d.stationText.value, _stationTextMeta));
    } else if (isInserting) {
      context.missing(_stationTextMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  StationDbData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return StationDbData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(StationDbCompanion d) {
    final map = <String, Variable>{};
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
    if (d.stationId.present) {
      map['station_id'] = Variable<String, StringType>(d.stationId.value);
    }
    if (d.placeId.present) {
      map['place_id'] = Variable<String, StringType>(d.placeId.value);
    }
    if (d.audioFileUrl.present) {
      map['audio_file_url'] =
          Variable<String, StringType>(d.audioFileUrl.value);
    }
    if (d.stationText.present) {
      map['station_text'] = Variable<String, StringType>(d.stationText.value);
    }
    return map;
  }

  @override
  $StationDbTable createAlias(String alias) {
    return $StationDbTable(_db, alias);
  }
}

abstract class _$DatabaseProvider extends GeneratedDatabase {
  _$DatabaseProvider(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $MeditationDbTable _meditationDb;
  $MeditationDbTable get meditationDb =>
      _meditationDb ??= $MeditationDbTable(this);
  $MeditationLanguageVersionDbTable _meditationLanguageVersionDb;
  $MeditationLanguageVersionDbTable get meditationLanguageVersionDb =>
      _meditationLanguageVersionDb ??= $MeditationLanguageVersionDbTable(this);
  $GroupDbTable _groupDb;
  $GroupDbTable get groupDb => _groupDb ??= $GroupDbTable(this);
  $AreaDbTable _areaDb;
  $AreaDbTable get areaDb => _areaDb ??= $AreaDbTable(this);
  $RouteDbTable _routeDb;
  $RouteDbTable get routeDb => _routeDb ??= $RouteDbTable(this);
  $StationDbTable _stationDb;
  $StationDbTable get stationDb => _stationDb ??= $StationDbTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        meditationDb,
        meditationLanguageVersionDb,
        groupDb,
        areaDb,
        routeDb,
        stationDb
      ];
}
