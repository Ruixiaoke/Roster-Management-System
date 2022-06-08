// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TaskRecord> _$taskRecordSerializer = new _$TaskRecordSerializer();

class _$TaskRecordSerializer implements StructuredSerializer<TaskRecord> {
  @override
  final Iterable<Type> types = const [TaskRecord, _$TaskRecord];
  @override
  final String wireName = 'TaskRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, TaskRecord object,
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
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.choosed;
    if (value != null) {
      result
        ..add('choosed')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
  TaskRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TaskRecordBuilder();

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
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'choosed':
          result.choosed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
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

class _$TaskRecord extends TaskRecord {
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
  final bool state;
  @override
  final bool choosed;
  @override
  final DocumentReference<Object> reference;

  factory _$TaskRecord([void Function(TaskRecordBuilder) updates]) =>
      (new TaskRecordBuilder()..update(updates)).build();

  _$TaskRecord._(
      {this.tasks,
      this.taskName,
      this.taskDes,
      this.taskId,
      this.startDate,
      this.endDate,
      this.state,
      this.choosed,
      this.reference})
      : super._();

  @override
  TaskRecord rebuild(void Function(TaskRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TaskRecordBuilder toBuilder() => new TaskRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TaskRecord &&
        tasks == other.tasks &&
        taskName == other.taskName &&
        taskDes == other.taskDes &&
        taskId == other.taskId &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        state == other.state &&
        choosed == other.choosed &&
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
            choosed.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TaskRecord')
          ..add('tasks', tasks)
          ..add('taskName', taskName)
          ..add('taskDes', taskDes)
          ..add('taskId', taskId)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('state', state)
          ..add('choosed', choosed)
          ..add('reference', reference))
        .toString();
  }
}

class TaskRecordBuilder implements Builder<TaskRecord, TaskRecordBuilder> {
  _$TaskRecord _$v;

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

  bool _state;
  bool get state => _$this._state;
  set state(bool state) => _$this._state = state;

  bool _choosed;
  bool get choosed => _$this._choosed;
  set choosed(bool choosed) => _$this._choosed = choosed;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  TaskRecordBuilder() {
    TaskRecord._initializeBuilder(this);
  }

  TaskRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tasks = $v.tasks?.toBuilder();
      _taskName = $v.taskName;
      _taskDes = $v.taskDes;
      _taskId = $v.taskId;
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _state = $v.state;
      _choosed = $v.choosed;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TaskRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TaskRecord;
  }

  @override
  void update(void Function(TaskRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TaskRecord build() {
    _$TaskRecord _$result;
    try {
      _$result = _$v ??
          new _$TaskRecord._(
              tasks: _tasks?.build(),
              taskName: taskName,
              taskDes: taskDes,
              taskId: taskId,
              startDate: startDate,
              endDate: endDate,
              state: state,
              choosed: choosed,
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'tasks';
        _tasks?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TaskRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
