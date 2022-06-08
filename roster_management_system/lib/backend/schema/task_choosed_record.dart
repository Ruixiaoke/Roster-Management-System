import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'task_choosed_record.g.dart';

abstract class TaskChoosedRecord
    implements Built<TaskChoosedRecord, TaskChoosedRecordBuilder> {
  static Serializer<TaskChoosedRecord> get serializer =>
      _$taskChoosedRecordSerializer;

  @nullable
  BuiltList<String> get tasks;

  @nullable
  @BuiltValueField(wireName: 'task_name')
  String get taskName;

  @nullable
  @BuiltValueField(wireName: 'task_des')
  String get taskDes;

  @nullable
  @BuiltValueField(wireName: 'task_id')
  String get taskId;

  @nullable
  @BuiltValueField(wireName: 'start_date')
  DateTime get startDate;

  @nullable
  @BuiltValueField(wireName: 'end_date')
  DateTime get endDate;

  @nullable
  String get state;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  DocumentReference get parentReference => reference.parent.parent;

  static void _initializeBuilder(TaskChoosedRecordBuilder builder) => builder
    ..tasks = ListBuilder()
    ..taskName = ''
    ..taskDes = ''
    ..taskId = ''
    ..state = ''
    ..uid = '';

  static Query<Map<String, dynamic>> collection([DocumentReference parent]) =>
      parent != null
          ? parent.collection('TaskChoosed')
          : FirebaseFirestore.instance.collectionGroup('TaskChoosed');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('TaskChoosed').doc();

  static Stream<TaskChoosedRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<TaskChoosedRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  TaskChoosedRecord._();
  factory TaskChoosedRecord([void Function(TaskChoosedRecordBuilder) updates]) =
      _$TaskChoosedRecord;

  static TaskChoosedRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createTaskChoosedRecordData({
  String taskName,
  String taskDes,
  String taskId,
  DateTime startDate,
  DateTime endDate,
  String state,
  String uid,
}) =>
    serializers.toFirestore(
        TaskChoosedRecord.serializer,
        TaskChoosedRecord((t) => t
          ..tasks = null
          ..taskName = taskName
          ..taskDes = taskDes
          ..taskId = taskId
          ..startDate = startDate
          ..endDate = endDate
          ..state = state
          ..uid = uid));
