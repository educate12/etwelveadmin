// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'messages_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MessagesRecord> _$messagesRecordSerializer =
    new _$MessagesRecordSerializer();

class _$MessagesRecordSerializer
    implements StructuredSerializer<MessagesRecord> {
  @override
  final Iterable<Type> types = const [MessagesRecord, _$MessagesRecord];
  @override
  final String wireName = 'MessagesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MessagesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.from;
    if (value != null) {
      result
        ..add('from')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.to;
    if (value != null) {
      result
        ..add('to')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.message;
    if (value != null) {
      result
        ..add('message')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sentDate;
    if (value != null) {
      result
        ..add('sent_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.readDate;
    if (value != null) {
      result
        ..add('read_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.read;
    if (value != null) {
      result
        ..add('read')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.accepted;
    if (value != null) {
      result
        ..add('accepted')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.readByAdmin;
    if (value != null) {
      result
        ..add('read_by_admin')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  MessagesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MessagesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'from':
          result.from = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'to':
          result.to = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sent_date':
          result.sentDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'read_date':
          result.readDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'read':
          result.read = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'accepted':
          result.accepted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'admin':
          result.admin = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'read_by_admin':
          result.readByAdmin = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$MessagesRecord extends MessagesRecord {
  @override
  final DocumentReference<Object?>? from;
  @override
  final DocumentReference<Object?>? to;
  @override
  final String? message;
  @override
  final DateTime? sentDate;
  @override
  final DateTime? readDate;
  @override
  final bool? read;
  @override
  final bool? accepted;
  @override
  final DateTime? createdTime;
  @override
  final DocumentReference<Object?>? admin;
  @override
  final bool? readByAdmin;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MessagesRecord([void Function(MessagesRecordBuilder)? updates]) =>
      (new MessagesRecordBuilder()..update(updates))._build();

  _$MessagesRecord._(
      {this.from,
      this.to,
      this.message,
      this.sentDate,
      this.readDate,
      this.read,
      this.accepted,
      this.createdTime,
      this.admin,
      this.readByAdmin,
      this.ffRef})
      : super._();

  @override
  MessagesRecord rebuild(void Function(MessagesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MessagesRecordBuilder toBuilder() =>
      new MessagesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MessagesRecord &&
        from == other.from &&
        to == other.to &&
        message == other.message &&
        sentDate == other.sentDate &&
        readDate == other.readDate &&
        read == other.read &&
        accepted == other.accepted &&
        createdTime == other.createdTime &&
        admin == other.admin &&
        readByAdmin == other.readByAdmin &&
        ffRef == other.ffRef;
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
                                $jc(
                                    $jc($jc($jc(0, from.hashCode), to.hashCode),
                                        message.hashCode),
                                    sentDate.hashCode),
                                readDate.hashCode),
                            read.hashCode),
                        accepted.hashCode),
                    createdTime.hashCode),
                admin.hashCode),
            readByAdmin.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MessagesRecord')
          ..add('from', from)
          ..add('to', to)
          ..add('message', message)
          ..add('sentDate', sentDate)
          ..add('readDate', readDate)
          ..add('read', read)
          ..add('accepted', accepted)
          ..add('createdTime', createdTime)
          ..add('admin', admin)
          ..add('readByAdmin', readByAdmin)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MessagesRecordBuilder
    implements Builder<MessagesRecord, MessagesRecordBuilder> {
  _$MessagesRecord? _$v;

  DocumentReference<Object?>? _from;
  DocumentReference<Object?>? get from => _$this._from;
  set from(DocumentReference<Object?>? from) => _$this._from = from;

  DocumentReference<Object?>? _to;
  DocumentReference<Object?>? get to => _$this._to;
  set to(DocumentReference<Object?>? to) => _$this._to = to;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  DateTime? _sentDate;
  DateTime? get sentDate => _$this._sentDate;
  set sentDate(DateTime? sentDate) => _$this._sentDate = sentDate;

  DateTime? _readDate;
  DateTime? get readDate => _$this._readDate;
  set readDate(DateTime? readDate) => _$this._readDate = readDate;

  bool? _read;
  bool? get read => _$this._read;
  set read(bool? read) => _$this._read = read;

  bool? _accepted;
  bool? get accepted => _$this._accepted;
  set accepted(bool? accepted) => _$this._accepted = accepted;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  DocumentReference<Object?>? _admin;
  DocumentReference<Object?>? get admin => _$this._admin;
  set admin(DocumentReference<Object?>? admin) => _$this._admin = admin;

  bool? _readByAdmin;
  bool? get readByAdmin => _$this._readByAdmin;
  set readByAdmin(bool? readByAdmin) => _$this._readByAdmin = readByAdmin;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MessagesRecordBuilder() {
    MessagesRecord._initializeBuilder(this);
  }

  MessagesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _from = $v.from;
      _to = $v.to;
      _message = $v.message;
      _sentDate = $v.sentDate;
      _readDate = $v.readDate;
      _read = $v.read;
      _accepted = $v.accepted;
      _createdTime = $v.createdTime;
      _admin = $v.admin;
      _readByAdmin = $v.readByAdmin;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MessagesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MessagesRecord;
  }

  @override
  void update(void Function(MessagesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MessagesRecord build() => _build();

  _$MessagesRecord _build() {
    final _$result = _$v ??
        new _$MessagesRecord._(
            from: from,
            to: to,
            message: message,
            sentDate: sentDate,
            readDate: readDate,
            read: read,
            accepted: accepted,
            createdTime: createdTime,
            admin: admin,
            readByAdmin: readByAdmin,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
