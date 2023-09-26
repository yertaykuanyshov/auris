// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $LanguageTable extends Language
    with TableInfo<$LanguageTable, LanguageData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LanguageTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _langCodeMeta =
      const VerificationMeta('langCode');
  @override
  late final GeneratedColumn<String> langCode = GeneratedColumn<String>(
      'lang_code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, langCode, description];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'language';
  @override
  VerificationContext validateIntegrity(Insertable<LanguageData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('lang_code')) {
      context.handle(_langCodeMeta,
          langCode.isAcceptableOrUnknown(data['lang_code']!, _langCodeMeta));
    } else if (isInserting) {
      context.missing(_langCodeMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LanguageData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LanguageData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      langCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}lang_code'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
    );
  }

  @override
  $LanguageTable createAlias(String alias) {
    return $LanguageTable(attachedDatabase, alias);
  }
}

class LanguageData extends DataClass implements Insertable<LanguageData> {
  final int id;
  final String langCode;
  final String description;
  const LanguageData(
      {required this.id, required this.langCode, required this.description});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['lang_code'] = Variable<String>(langCode);
    map['description'] = Variable<String>(description);
    return map;
  }

  LanguageCompanion toCompanion(bool nullToAbsent) {
    return LanguageCompanion(
      id: Value(id),
      langCode: Value(langCode),
      description: Value(description),
    );
  }

  factory LanguageData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LanguageData(
      id: serializer.fromJson<int>(json['id']),
      langCode: serializer.fromJson<String>(json['langCode']),
      description: serializer.fromJson<String>(json['description']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'langCode': serializer.toJson<String>(langCode),
      'description': serializer.toJson<String>(description),
    };
  }

  LanguageData copyWith({int? id, String? langCode, String? description}) =>
      LanguageData(
        id: id ?? this.id,
        langCode: langCode ?? this.langCode,
        description: description ?? this.description,
      );
  @override
  String toString() {
    return (StringBuffer('LanguageData(')
          ..write('id: $id, ')
          ..write('langCode: $langCode, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, langCode, description);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LanguageData &&
          other.id == this.id &&
          other.langCode == this.langCode &&
          other.description == this.description);
}

class LanguageCompanion extends UpdateCompanion<LanguageData> {
  final Value<int> id;
  final Value<String> langCode;
  final Value<String> description;
  const LanguageCompanion({
    this.id = const Value.absent(),
    this.langCode = const Value.absent(),
    this.description = const Value.absent(),
  });
  LanguageCompanion.insert({
    this.id = const Value.absent(),
    required String langCode,
    required String description,
  })  : langCode = Value(langCode),
        description = Value(description);
  static Insertable<LanguageData> custom({
    Expression<int>? id,
    Expression<String>? langCode,
    Expression<String>? description,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (langCode != null) 'lang_code': langCode,
      if (description != null) 'description': description,
    });
  }

  LanguageCompanion copyWith(
      {Value<int>? id, Value<String>? langCode, Value<String>? description}) {
    return LanguageCompanion(
      id: id ?? this.id,
      langCode: langCode ?? this.langCode,
      description: description ?? this.description,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (langCode.present) {
      map['lang_code'] = Variable<String>(langCode.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LanguageCompanion(')
          ..write('id: $id, ')
          ..write('langCode: $langCode, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }
}

class $ListenHistoryTable extends ListenHistory
    with TableInfo<$ListenHistoryTable, ListenHistoryData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ListenHistoryTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _secondCountMeta =
      const VerificationMeta('secondCount');
  @override
  late final GeneratedColumn<int> secondCount = GeneratedColumn<int>(
      'second_count', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
      'date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, secondCount, date];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'listen_history';
  @override
  VerificationContext validateIntegrity(Insertable<ListenHistoryData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('second_count')) {
      context.handle(
          _secondCountMeta,
          secondCount.isAcceptableOrUnknown(
              data['second_count']!, _secondCountMeta));
    } else if (isInserting) {
      context.missing(_secondCountMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ListenHistoryData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ListenHistoryData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      secondCount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}second_count'])!,
      date: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date'])!,
    );
  }

  @override
  $ListenHistoryTable createAlias(String alias) {
    return $ListenHistoryTable(attachedDatabase, alias);
  }
}

class ListenHistoryData extends DataClass
    implements Insertable<ListenHistoryData> {
  final int id;
  final int secondCount;
  final DateTime date;
  const ListenHistoryData(
      {required this.id, required this.secondCount, required this.date});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['second_count'] = Variable<int>(secondCount);
    map['date'] = Variable<DateTime>(date);
    return map;
  }

  ListenHistoryCompanion toCompanion(bool nullToAbsent) {
    return ListenHistoryCompanion(
      id: Value(id),
      secondCount: Value(secondCount),
      date: Value(date),
    );
  }

  factory ListenHistoryData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ListenHistoryData(
      id: serializer.fromJson<int>(json['id']),
      secondCount: serializer.fromJson<int>(json['secondCount']),
      date: serializer.fromJson<DateTime>(json['date']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'secondCount': serializer.toJson<int>(secondCount),
      'date': serializer.toJson<DateTime>(date),
    };
  }

  ListenHistoryData copyWith({int? id, int? secondCount, DateTime? date}) =>
      ListenHistoryData(
        id: id ?? this.id,
        secondCount: secondCount ?? this.secondCount,
        date: date ?? this.date,
      );
  @override
  String toString() {
    return (StringBuffer('ListenHistoryData(')
          ..write('id: $id, ')
          ..write('secondCount: $secondCount, ')
          ..write('date: $date')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, secondCount, date);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ListenHistoryData &&
          other.id == this.id &&
          other.secondCount == this.secondCount &&
          other.date == this.date);
}

class ListenHistoryCompanion extends UpdateCompanion<ListenHistoryData> {
  final Value<int> id;
  final Value<int> secondCount;
  final Value<DateTime> date;
  const ListenHistoryCompanion({
    this.id = const Value.absent(),
    this.secondCount = const Value.absent(),
    this.date = const Value.absent(),
  });
  ListenHistoryCompanion.insert({
    this.id = const Value.absent(),
    required int secondCount,
    required DateTime date,
  })  : secondCount = Value(secondCount),
        date = Value(date);
  static Insertable<ListenHistoryData> custom({
    Expression<int>? id,
    Expression<int>? secondCount,
    Expression<DateTime>? date,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (secondCount != null) 'second_count': secondCount,
      if (date != null) 'date': date,
    });
  }

  ListenHistoryCompanion copyWith(
      {Value<int>? id, Value<int>? secondCount, Value<DateTime>? date}) {
    return ListenHistoryCompanion(
      id: id ?? this.id,
      secondCount: secondCount ?? this.secondCount,
      date: date ?? this.date,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (secondCount.present) {
      map['second_count'] = Variable<int>(secondCount.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ListenHistoryCompanion(')
          ..write('id: $id, ')
          ..write('secondCount: $secondCount, ')
          ..write('date: $date')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $LanguageTable language = $LanguageTable(this);
  late final $ListenHistoryTable listenHistory = $ListenHistoryTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [language, listenHistory];
}
