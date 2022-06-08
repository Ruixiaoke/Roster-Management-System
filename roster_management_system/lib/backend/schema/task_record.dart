import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'task_record.g.dart';

abstract class TaskRecord implements Built<TaskRecord, TaskRecordBuilder> {
  static Serializer<TaskRecord> get serializer => _$taskRecordSerializer;

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
  bool get state;

  @nullable
  bool get choosed;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(TaskRecordBuilder builder) => builder
    ..tasks = ListBuilder()
    ..taskName = ''
    ..taskDes = ''
    ..taskId = ''
    ..state = false
    ..choosed = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Task');

  static Stream<TaskRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<TaskRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  TaskRecord._();
  factory TaskRecord([void Function(TaskRecordBuilder) updates]) = _$TaskRecord;

  static TaskRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createTaskRecordData({
  String taskName,
  String taskDes,
  String taskId,
  DateTime startDate,
  DateTime endDate,
  bool state,
  bool choosed,
}) =>
    serializers.toFirestore(
        TaskRecord.serializer,
        TaskRecord((t) => t
          ..tasks = null
          ..taskName = taskName
          ..taskDes = taskDes
          ..taskId = taskId
          ..startDate = startDate
          ..endDate = endDate
          ..state = state
          ..choosed = choosed));
