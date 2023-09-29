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
  @override
  List<GeneratedColumn> get $columns => [id, langCode];
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
  const LanguageData({required this.id, required this.langCode});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['lang_code'] = Variable<String>(langCode);
    return map;
  }

  LanguageCompanion toCompanion(bool nullToAbsent) {
    return LanguageCompanion(
      id: Value(id),
      langCode: Value(langCode),
    );
  }

  factory LanguageData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LanguageData(
      id: serializer.fromJson<int>(json['id']),
      langCode: serializer.fromJson<String>(json['langCode']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'langCode': serializer.toJson<String>(langCode),
    };
  }

  LanguageData copyWith({int? id, String? langCode}) => LanguageData(
        id: id ?? this.id,
        langCode: langCode ?? this.langCode,
      );
  @override
  String toString() {
    return (StringBuffer('LanguageData(')
          ..write('id: $id, ')
          ..write('langCode: $langCode')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, langCode);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LanguageData &&
          other.id == this.id &&
          other.langCode == this.langCode);
}

class LanguageCompanion extends UpdateCompanion<LanguageData> {
  final Value<int> id;
  final Value<String> langCode;
  const LanguageCompanion({
    this.id = const Value.absent(),
    this.langCode = const Value.absent(),
  });
  LanguageCompanion.insert({
    this.id = const Value.absent(),
    required String langCode,
  }) : langCode = Value(langCode);
  static Insertable<LanguageData> custom({
    Expression<int>? id,
    Expression<String>? langCode,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (langCode != null) 'lang_code': langCode,
    });
  }

  LanguageCompanion copyWith({Value<int>? id, Value<String>? langCode}) {
    return LanguageCompanion(
      id: id ?? this.id,
      langCode: langCode ?? this.langCode,
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
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LanguageCompanion(')
          ..write('id: $id, ')
          ..write('langCode: $langCode')
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
  static const VerificationMeta _secondMeta = const VerificationMeta('second');
  @override
  late final GeneratedColumn<int> second = GeneratedColumn<int>(
      'second', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _languageIdMeta =
      const VerificationMeta('languageId');
  @override
  late final GeneratedColumn<int> languageId = GeneratedColumn<int>(
      'language_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
      'date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, second, languageId, date];
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
    if (data.containsKey('second')) {
      context.handle(_secondMeta,
          second.isAcceptableOrUnknown(data['second']!, _secondMeta));
    } else if (isInserting) {
      context.missing(_secondMeta);
    }
    if (data.containsKey('language_id')) {
      context.handle(
          _languageIdMeta,
          languageId.isAcceptableOrUnknown(
              data['language_id']!, _languageIdMeta));
    } else if (isInserting) {
      context.missing(_languageIdMeta);
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
      second: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}second'])!,
      languageId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}language_id'])!,
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
  final int second;
  final int languageId;
  final DateTime date;
  const ListenHistoryData(
      {required this.id,
      required this.second,
      required this.languageId,
      required this.date});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['second'] = Variable<int>(second);
    map['language_id'] = Variable<int>(languageId);
    map['date'] = Variable<DateTime>(date);
    return map;
  }

  ListenHistoryCompanion toCompanion(bool nullToAbsent) {
    return ListenHistoryCompanion(
      id: Value(id),
      second: Value(second),
      languageId: Value(languageId),
      date: Value(date),
    );
  }

  factory ListenHistoryData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ListenHistoryData(
      id: serializer.fromJson<int>(json['id']),
      second: serializer.fromJson<int>(json['second']),
      languageId: serializer.fromJson<int>(json['languageId']),
      date: serializer.fromJson<DateTime>(json['date']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'second': serializer.toJson<int>(second),
      'languageId': serializer.toJson<int>(languageId),
      'date': serializer.toJson<DateTime>(date),
    };
  }

  ListenHistoryData copyWith(
          {int? id, int? second, int? languageId, DateTime? date}) =>
      ListenHistoryData(
        id: id ?? this.id,
        second: second ?? this.second,
        languageId: languageId ?? this.languageId,
        date: date ?? this.date,
      );
  @override
  String toString() {
    return (StringBuffer('ListenHistoryData(')
          ..write('id: $id, ')
          ..write('second: $second, ')
          ..write('languageId: $languageId, ')
          ..write('date: $date')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, second, languageId, date);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ListenHistoryData &&
          other.id == this.id &&
          other.second == this.second &&
          other.languageId == this.languageId &&
          other.date == this.date);
}

class ListenHistoryCompanion extends UpdateCompanion<ListenHistoryData> {
  final Value<int> id;
  final Value<int> second;
  final Value<int> languageId;
  final Value<DateTime> date;
  const ListenHistoryCompanion({
    this.id = const Value.absent(),
    this.second = const Value.absent(),
    this.languageId = const Value.absent(),
    this.date = const Value.absent(),
  });
  ListenHistoryCompanion.insert({
    this.id = const Value.absent(),
    required int second,
    required int languageId,
    required DateTime date,
  })  : second = Value(second),
        languageId = Value(languageId),
        date = Value(date);
  static Insertable<ListenHistoryData> custom({
    Expression<int>? id,
    Expression<int>? second,
    Expression<int>? languageId,
    Expression<DateTime>? date,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (second != null) 'second': second,
      if (languageId != null) 'language_id': languageId,
      if (date != null) 'date': date,
    });
  }

  ListenHistoryCompanion copyWith(
      {Value<int>? id,
      Value<int>? second,
      Value<int>? languageId,
      Value<DateTime>? date}) {
    return ListenHistoryCompanion(
      id: id ?? this.id,
      second: second ?? this.second,
      languageId: languageId ?? this.languageId,
      date: date ?? this.date,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (second.present) {
      map['second'] = Variable<int>(second.value);
    }
    if (languageId.present) {
      map['language_id'] = Variable<int>(languageId.value);
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
          ..write('second: $second, ')
          ..write('languageId: $languageId, ')
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
