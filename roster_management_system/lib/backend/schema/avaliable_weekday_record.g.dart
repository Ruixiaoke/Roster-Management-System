// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'avaliable_weekday_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AvaliableWeekdayRecord> _$avaliableWeekdayRecordSerializer =
    new _$AvaliableWeekdayRecordSerializer();

class _$AvaliableWeekdayRecordSerializer
    implements StructuredSerializer<AvaliableWeekdayRecord> {
  @override
  final Iterable<Type> types = const [
    AvaliableWeekdayRecord,
    _$AvaliableWeekdayRecord
  ];
  @override
  final String wireName = 'AvaliableWeekdayRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, AvaliableWeekdayRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.date;
    if (value != null) {
      result
        ..add('Date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.avaliable;
    if (value != null) {
      result
        ..add('Avaliable')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.clockIn;
    if (value != null) {
      result
        ..add('ClockIn')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.clockOut;
    if (value != null) {
      result
        ..add('ClockOut')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.isClockin;
    if (value != null) {
      result
        ..add('isClockin')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isClockOut;
    if (value != null) {
      result
        ..add('isClockOut')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.index;
    if (value != null) {
      result
        ..add('index')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
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
  AvaliableWeekdayRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AvaliableWeekdayRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'Date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Avaliable':
          result.avaliable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'ClockIn':
          result.clockIn = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'ClockOut':
          result.clockOut = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'isClockin':
          result.isClockin = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'isClockOut':
          result.isClockOut = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'index':
          result.index = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
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

class _$AvaliableWeekdayRecord extends AvaliableWeekdayRecord {
  @override
  final String date;
  @override
  final bool avaliable;
  @override
  final DateTime clockIn;
  @override
  final DateTime clockOut;
  @override
  final bool isClockin;
  @override
  final bool isClockOut;
  @override
  final int index;
  @override
  final String uid;
  @override
  final DocumentReference<Object> reference;

  factory _$AvaliableWeekdayRecord(
          [void Function(AvaliableWeekdayRecordBuilder) updates]) =>
      (new AvaliableWeekdayRecordBuilder()..update(updates)).build();

  _$AvaliableWeekdayRecord._(
      {this.date,
      this.avaliable,
      this.clockIn,
      this.clockOut,
      this.isClockin,
      this.isClockOut,
      this.index,
      this.uid,
      this.reference})
      : super._();

  @override
  AvaliableWeekdayRecord rebuild(
          void Function(AvaliableWeekdayRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AvaliableWeekdayRecordBuilder toBuilder() =>
      new AvaliableWeekdayRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AvaliableWeekdayRecord &&
        date == other.date &&
        avaliable == other.avaliable &&
        clockIn == other.clockIn &&
        clockOut == other.clockOut &&
        isClockin == other.isClockin &&
        isClockOut == other.isClockOut &&
        index == other.index &&
        uid == other.uid &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, date.hashCode), avaliable.hashCode),
                                clockIn.hashCode),
                            clockOut.hashCode),
                        isClockin.hashCode),
                    isClockOut.hashCode),
                index.hashCode),
            uid.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AvaliableWeekdayRecord')
          ..add('date', date)
          ..add('avaliable', avaliable)
          ..add('clockIn', clockIn)
          ..add('clockOut', clockOut)
          ..add('isClockin', isClockin)
          ..add('isClockOut', isClockOut)
          ..add('index', index)
          ..add('uid', uid)
          ..add('reference', reference))
        .toString();
  }
}

class AvaliableWeekdayRecordBuilder
    implements Builder<AvaliableWeekdayRecord, AvaliableWeekdayRecordBuilder> {
  _$AvaliableWeekdayRecord _$v;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  bool _avaliable;
  bool get avaliable => _$this._avaliable;
  set avaliable(bool avaliable) => _$this._avaliable = avaliable;

  DateTime _clockIn;
  DateTime get clockIn => _$this._clockIn;
  set clockIn(DateTime clockIn) => _$this._clockIn = clockIn;

  DateTime _clockOut;
  DateTime get clockOut => _$this._clockOut;
  set clockOut(DateTime clockOut) => _$this._clockOut = clockOut;

  bool _isClockin;
  bool get isClockin => _$this._isClockin;
  set isClockin(bool isClockin) => _$this._isClockin = isClockin;

  bool _isClockOut;
  bool get isClockOut => _$this._isClockOut;
  set isClockOut(bool isClockOut) => _$this._isClockOut = isClockOut;

  int _index;
  int get index => _$this._index;
  set index(int index) => _$this._index = index;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  AvaliableWeekdayRecordBuilder() {
    AvaliableWeekdayRecord._initializeBuilder(this);
  }

  AvaliableWeekdayRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _avaliable = $v.avaliable;
      _clockIn = $v.clockIn;
      _clockOut = $v.clockOut;
      _isClockin = $v.isClockin;
      _isClockOut = $v.isClockOut;
      _index = $v.index;
      _uid = $v.uid;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AvaliableWeekdayRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AvaliableWeekdayRecord;
  }

  @override
  void update(void Function(AvaliableWeekdayRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AvaliableWeekdayRecord build() {
    final _$result = _$v ??
        new _$AvaliableWeekdayRecord._(
            date: date,
            avaliable: avaliable,
            clockIn: clockIn,
            clockOut: clockOut,
            isClockin: isClockin,
            isClockOut: isClockOut,
            index: index,
            uid: uid,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
