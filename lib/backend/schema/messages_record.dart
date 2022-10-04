import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'messages_record.g.dart';

abstract class MessagesRecord
    implements Built<MessagesRecord, MessagesRecordBuilder> {
  static Serializer<MessagesRecord> get serializer =>
      _$messagesRecordSerializer;

  DocumentReference? get from;

  DocumentReference? get to;

  String? get message;

  @BuiltValueField(wireName: 'sent_date')
  DateTime? get sentDate;

  @BuiltValueField(wireName: 'read_date')
  DateTime? get readDate;

  bool? get read;

  bool? get accepted;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  DocumentReference? get admin;

  @BuiltValueField(wireName: 'read_by_admin')
  bool? get readByAdmin;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MessagesRecordBuilder builder) => builder
    ..message = ''
    ..read = false
    ..accepted = false
    ..readByAdmin = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('messages');

  static Stream<MessagesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MessagesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MessagesRecord._();
  factory MessagesRecord([void Function(MessagesRecordBuilder) updates]) =
      _$MessagesRecord;

  static MessagesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMessagesRecordData({
  DocumentReference? from,
  DocumentReference? to,
  String? message,
  DateTime? sentDate,
  DateTime? readDate,
  bool? read,
  bool? accepted,
  DateTime? createdTime,
  DocumentReference? admin,
  bool? readByAdmin,
}) {
  final firestoreData = serializers.toFirestore(
    MessagesRecord.serializer,
    MessagesRecord(
      (m) => m
        ..from = from
        ..to = to
        ..message = message
        ..sentDate = sentDate
        ..readDate = readDate
        ..read = read
        ..accepted = accepted
        ..createdTime = createdTime
        ..admin = admin
        ..readByAdmin = readByAdmin,
    ),
  );

  return firestoreData;
}
