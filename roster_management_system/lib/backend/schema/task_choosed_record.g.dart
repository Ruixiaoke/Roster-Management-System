// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_choosed_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TaskChoosedRecord> _$taskChoosedRecordSerializer =
    new _$TaskChoosedRecordSerializer();

class _$TaskChoosedRecordSerializer
    implements StructuredSerializer<TaskChoosedRecord> {
  @override
  final Iterable<Type> types = const [TaskChoosedRecord, _$TaskChoosedRecord];
  @override
  final String wireName = 'TaskChoosedRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, TaskChoosedRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.tasks;
    if (value != null) {
      result
        ..add('tasks')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.taskName;
    if (value != null) {
      result
        ..add('task_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.taskDes;
    if (value != null) {
      result
        ..add('task_des')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.taskId;
    if (value != null) {
      result
        ..add('task_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.startDate;
    if (value != null) {
      result
        ..add('start_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.endDate;
    if (value != null) {
      result
        ..add('end_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.state;
    if (value != null) {
      result
        ..add('state')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  TaskChoosedRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TaskChoosedRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'tasks':
          result.tasks.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'task_name':
          result.taskName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'task_des':
          result.taskDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'task_id':
          result.taskId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'start_date':
          result.startDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'end_date':
          result.endDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$TaskChoosedRecord extends TaskChoosedRecord {
  @override
  final BuiltList<String> tasks;
  @override
  final String taskName;
  @override
  final String taskDes;
  @override
  final String taskId;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final String state;
  @override
  final String uid;
  @override
  final DocumentReference<Object> reference;

  factory _$TaskChoosedRecord(
          [void Function(TaskChoosedRecordBuilder) updates]) =>
      (new TaskChoosedRecordBuilder()..update(updates)).build();

  _$TaskChoosedRecord._(
      {this.tasks,
      this.taskName,
      this.taskDes,
      this.taskId,
      this.startDate,
      this.endDate,
      this.state,
      this.uid,
      this.reference})
      : super._();

  @override
  TaskChoosedRecord rebuild(void Function(TaskChoosedRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TaskChoosedRecordBuilder toBuilder() =>
      new TaskChoosedRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TaskChoosedRecord &&
        tasks == other.tasks &&
        taskName == other.taskName &&
        taskDes == other.taskDes &&
        taskId == other.taskId &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        state == other.state &&
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
                            $jc($jc($jc(0, tasks.hashCode), taskName.hashCode),
                                taskDes.hashCode),
                            taskId.hashCode),
                        startDate.hashCode),
                    endDate.hashCode),
                state.hashCode),
            uid.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TaskChoosedRecord')
          ..add('tasks', tasks)
          ..add('taskName', taskName)
          ..add('taskDes', taskDes)
          ..add('taskId', taskId)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('state', state)
          ..add('uid', uid)
          ..add('reference', reference))
        .toString();
  }
}

class TaskChoosedRecordBuilder
    implements Builder<TaskChoosedRecord, TaskChoosedRecordBuilder> {
  _$TaskChoosedRecord _$v;

  ListBuilder<String> _tasks;
  ListBuilder<String> get tasks => _$this._tasks ??= new ListBuilder<String>();
  set tasks(ListBuilder<String> tasks) => _$this._tasks = tasks;

  String _taskName;
  String get taskName => _$this._taskName;
  set taskName(String taskName) => _$this._taskName = taskName;

  String _taskDes;
  String get taskDes => _$this._taskDes;
  set taskDes(String taskDes) => _$this._taskDes = taskDes;

  String _taskId;
  String get taskId => _$this._taskId;
  set taskId(String taskId) => _$this._taskId = taskId;

  DateTime _startDate;
  DateTime get startDate => _$this._startDate;
  set startDate(DateTime startDate) => _$this._startDate = startDate;

  DateTime _endDate;
  DateTime get endDate => _$this._endDate;
  set endDate(DateTime endDate) => _$this._endDate = endDate;

  String _state;
  String get state => _$this._state;
  set state(String state) => _$this._state = state;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  TaskChoosedRecordBuilder() {
    TaskChoosedRecord._initializeBuilder(this);
  }

  TaskChoosedRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tasks = $v.tasks?.toBuilder();
      _taskName = $v.taskName;
      _taskDes = $v.taskDes;
      _taskId = $v.taskId;
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _state = $v.state;
      _uid = $v.uid;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TaskChoosedRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TaskChoosedRecord;
  }

  @override
  void update(void Function(TaskChoosedRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TaskChoosedRecord build() {
    _$TaskChoosedRecord _$result;
    try {
      _$result = _$v ??
          new _$TaskChoosedRecord._(
              tasks: _tasks?.build(),
              taskName: taskName,
              taskDes: taskDes,
              taskId: taskId,
              startDate: startDate,
              endDate: endDate,
              state: state,
              uid: uid,
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'tasks';
        _tasks?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TaskChoosedRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
