import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'train_record.g.dart';

abstract class TrainRecord implements Built<TrainRecord, TrainRecordBuilder> {
  static Serializer<TrainRecord> get serializer => _$trainRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'train_name')
  String get trainName;

  @nullable
  String get path;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(TrainRecordBuilder builder) => builder
    ..trainName = ''
    ..path = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Train');

  static Stream<TrainRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<TrainRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  TrainRecord._();
  factory TrainRecord([void Function(TrainRecordBuilder) updates]) =
      _$TrainRecord;

  static TrainRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createTrainRecordData({
  String trainName,
  String path,
}) =>
    serializers.toFirestore(
        TrainRecord.serializer,
        TrainRecord((t) => t
          ..trainName = trainName
          ..path = path));
