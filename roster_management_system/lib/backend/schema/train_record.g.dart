// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'train_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TrainRecord> _$trainRecordSerializer = new _$TrainRecordSerializer();

class _$TrainRecordSerializer implements StructuredSerializer<TrainRecord> {
  @override
  final Iterable<Type> types = const [TrainRecord, _$TrainRecord];
  @override
  final String wireName = 'TrainRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, TrainRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.trainName;
    if (value != null) {
      result
        ..add('train_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.path;
    if (value != null) {
      result
        ..add('path')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  TrainRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TrainRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'train_name':
          result.trainName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'path':
          result.path = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$TrainRecord extends TrainRecord {
  @override
  final String trainName;
  @override
  final String path;
  @override
  final DocumentReference<Object> reference;

  factory _$TrainRecord([void Function(TrainRecordBuilder) updates]) =>
      (new TrainRecordBuilder()..update(updates)).build();

  _$TrainRecord._({this.trainName, this.path, this.reference}) : super._();

  @override
  TrainRecord rebuild(void Function(TrainRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrainRecordBuilder toBuilder() => new TrainRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrainRecord &&
        trainName == other.trainName &&
        path == other.path &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, trainName.hashCode), path.hashCode), reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TrainRecord')
          ..add('trainName', trainName)
          ..add('path', path)
          ..add('reference', reference))
        .toString();
  }
}

class TrainRecordBuilder implements Builder<TrainRecord, TrainRecordBuilder> {
  _$TrainRecord _$v;

  String _trainName;
  String get trainName => _$this._trainName;
  set trainName(String trainName) => _$this._trainName = trainName;

  String _path;
  String get path => _$this._path;
  set path(String path) => _$this._path = path;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  TrainRecordBuilder() {
    TrainRecord._initializeBuilder(this);
  }

  TrainRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _trainName = $v.trainName;
      _path = $v.path;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrainRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TrainRecord;
  }

  @override
  void update(void Function(TrainRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TrainRecord build() {
    final _$result = _$v ??
        new _$TrainRecord._(
            trainName: trainName, path: path, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
