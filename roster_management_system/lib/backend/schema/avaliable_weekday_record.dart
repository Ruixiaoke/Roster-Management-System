import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'avaliable_weekday_record.g.dart';

abstract class AvaliableWeekdayRecord
    implements Built<AvaliableWeekdayRecord, AvaliableWeekdayRecordBuilder> {
  static Serializer<AvaliableWeekdayRecord> get serializer =>
      _$avaliableWeekdayRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Date')
  String get date;

  @nullable
  @BuiltValueField(wireName: 'Avaliable')
  bool get avaliable;

  @nullable
  @BuiltValueField(wireName: 'ClockIn')
  DateTime get clockIn;

  @nullable
  @BuiltValueField(wireName: 'ClockOut')
  DateTime get clockOut;

  @nullable
  bool get isClockin;

  @nullable
  bool get isClockOut;

  @nullable
  int get index;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  DocumentReference get parentReference => reference.parent.parent;

  static void _initializeBuilder(AvaliableWeekdayRecordBuilder builder) =>
      builder
        ..date = ''
        ..avaliable = false
        ..isClockin = false
        ..isClockOut = false
        ..index = 0
        ..uid = '';

  static Query<Map<String, dynamic>> collection([DocumentReference parent]) =>
      parent != null
          ? parent.collection('AvaliableWeekday')
          : FirebaseFirestore.instance.collectionGroup('AvaliableWeekday');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('AvaliableWeekday').doc();

  static Stream<AvaliableWeekdayRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<AvaliableWeekdayRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  AvaliableWeekdayRecord._();
  factory AvaliableWeekdayRecord(
          [void Function(AvaliableWeekdayRecordBuilder) updates]) =
      _$AvaliableWeekdayRecord;

  static AvaliableWeekdayRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createAvaliableWeekdayRecordData({
  String date,
  bool avaliable,
  DateTime clockIn,
  DateTime clockOut,
  bool isClockin,
  bool isClockOut,
  int index,
  String uid,
}) =>
    serializers.toFirestore(
        AvaliableWeekdayRecord.serializer,
        AvaliableWeekdayRecord((a) => a
          ..date = date
          ..avaliable = avaliable
          ..clockIn = clockIn
          ..clockOut = clockOut
          ..isClockin = isClockin
          ..isClockOut = isClockOut
          ..index = index
          ..uid = uid));
