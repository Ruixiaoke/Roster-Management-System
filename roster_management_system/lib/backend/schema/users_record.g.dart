// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsersRecord> _$usersRecordSerializer = new _$UsersRecordSerializer();

class _$UsersRecordSerializer implements StructuredSerializer<UsersRecord> {
  @override
  final Iterable<Type> types = const [UsersRecord, _$UsersRecord];
  @override
  final String wireName = 'UsersRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, UsersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
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
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.admin;
    if (value != null) {
      result
        ..add('admin')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.avaliableDate;
    if (value != null) {
      result
        ..add('avaliable_date')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(bool)])));
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
  UsersRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'admin':
          result.admin = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'avaliable_date':
          result.avaliableDate.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(bool)]))
              as BuiltList<Object>);
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

class _$UsersRecord extends UsersRecord {
  @override
  final BuiltList<String> user;
  @override
  final String email;
  @override
  final String displayName;
  @override
  final String uid;
  @override
  final String phoneNumber;
  @override
  final String photoUrl;
  @override
  final DateTime createdTime;
  @override
  final bool admin;
  @override
  final BuiltList<bool> avaliableDate;
  @override
  final DocumentReference<Object> reference;

  factory _$UsersRecord([void Function(UsersRecordBuilder) updates]) =>
      (new UsersRecordBuilder()..update(updates)).build();

  _$UsersRecord._(
      {this.user,
      this.email,
      this.displayName,
      this.uid,
      this.phoneNumber,
      this.photoUrl,
      this.createdTime,
      this.admin,
      this.avaliableDate,
      this.reference})
      : super._();

  @override
  UsersRecord rebuild(void Function(UsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersRecordBuilder toBuilder() => new UsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersRecord &&
        user == other.user &&
        email == other.email &&
        displayName == other.displayName &&
        uid == other.uid &&
        phoneNumber == other.phoneNumber &&
        photoUrl == other.photoUrl &&
        createdTime == other.createdTime &&
        admin == other.admin &&
        avaliableDate == other.avaliableDate &&
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
                            $jc(
                                $jc($jc($jc(0, user.hashCode), email.hashCode),
                                    displayName.hashCode),
                                uid.hashCode),
                            phoneNumber.hashCode),
                        photoUrl.hashCode),
                    createdTime.hashCode),
                admin.hashCode),
            avaliableDate.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UsersRecord')
          ..add('user', user)
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('uid', uid)
          ..add('phoneNumber', phoneNumber)
          ..add('photoUrl', photoUrl)
          ..add('createdTime', createdTime)
          ..add('admin', admin)
          ..add('avaliableDate', avaliableDate)
          ..add('reference', reference))
        .toString();
  }
}

class UsersRecordBuilder implements Builder<UsersRecord, UsersRecordBuilder> {
  _$UsersRecord _$v;

  ListBuilder<String> _user;
  ListBuilder<String> get user => _$this._user ??= new ListBuilder<String>();
  set user(ListBuilder<String> user) => _$this._user = user;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _displayName;
  String get displayName => _$this._displayName;
  set displayName(String displayName) => _$this._displayName = displayName;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  String _photoUrl;
  String get photoUrl => _$this._photoUrl;
  set photoUrl(String photoUrl) => _$this._photoUrl = photoUrl;

  DateTime _createdTime;
  DateTime get createdTime => _$this._createdTime;
  set createdTime(DateTime createdTime) => _$this._createdTime = createdTime;

  bool _admin;
  bool get admin => _$this._admin;
  set admin(bool admin) => _$this._admin = admin;

  ListBuilder<bool> _avaliableDate;
  ListBuilder<bool> get avaliableDate =>
      _$this._avaliableDate ??= new ListBuilder<bool>();
  set avaliableDate(ListBuilder<bool> avaliableDate) =>
      _$this._avaliableDate = avaliableDate;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  UsersRecordBuilder() {
    UsersRecord._initializeBuilder(this);
  }

  UsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user?.toBuilder();
      _email = $v.email;
      _displayName = $v.displayName;
      _uid = $v.uid;
      _phoneNumber = $v.phoneNumber;
      _photoUrl = $v.photoUrl;
      _createdTime = $v.createdTime;
      _admin = $v.admin;
      _avaliableDate = $v.avaliableDate?.toBuilder();
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersRecord;
  }

  @override
  void update(void Function(UsersRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UsersRecord build() {
    _$UsersRecord _$result;
    try {
      _$result = _$v ??
          new _$UsersRecord._(
              user: _user?.build(),
              email: email,
              displayName: displayName,
              uid: uid,
              phoneNumber: phoneNumber,
              photoUrl: photoUrl,
              createdTime: createdTime,
              admin: admin,
              avaliableDate: _avaliableDate?.build(),
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();

        _$failedField = 'avaliableDate';
        _avaliableDate?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UsersRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
