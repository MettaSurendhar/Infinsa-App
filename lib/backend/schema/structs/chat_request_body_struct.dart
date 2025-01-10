// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ChatRequestBodyStruct extends FFFirebaseStruct {
  ChatRequestBodyStruct({
    String? chatType,
    String? category,
    String? query,
    String? data,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _chatType = chatType,
        _category = category,
        _query = query,
        _data = data,
        super(firestoreUtilData);

  // "chat_type" field.
  String? _chatType;
  String get chatType => _chatType ?? '';
  set chatType(String? val) => _chatType = val;

  bool hasChatType() => _chatType != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;

  bool hasCategory() => _category != null;

  // "query" field.
  String? _query;
  String get query => _query ?? '';
  set query(String? val) => _query = val;

  bool hasQuery() => _query != null;

  // "data" field.
  String? _data;
  String get data => _data ?? '';
  set data(String? val) => _data = val;

  bool hasData() => _data != null;

  static ChatRequestBodyStruct fromMap(Map<String, dynamic> data) =>
      ChatRequestBodyStruct(
        chatType: data['chat_type'] as String?,
        category: data['category'] as String?,
        query: data['query'] as String?,
        data: data['data'] as String?,
      );

  static ChatRequestBodyStruct? maybeFromMap(dynamic data) => data is Map
      ? ChatRequestBodyStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'chat_type': _chatType,
        'category': _category,
        'query': _query,
        'data': _data,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'chat_type': serializeParam(
          _chatType,
          ParamType.String,
        ),
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
        'query': serializeParam(
          _query,
          ParamType.String,
        ),
        'data': serializeParam(
          _data,
          ParamType.String,
        ),
      }.withoutNulls;

  static ChatRequestBodyStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChatRequestBodyStruct(
        chatType: deserializeParam(
          data['chat_type'],
          ParamType.String,
          false,
        ),
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
        query: deserializeParam(
          data['query'],
          ParamType.String,
          false,
        ),
        data: deserializeParam(
          data['data'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ChatRequestBodyStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChatRequestBodyStruct &&
        chatType == other.chatType &&
        category == other.category &&
        query == other.query &&
        data == other.data;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([chatType, category, query, data]);
}

ChatRequestBodyStruct createChatRequestBodyStruct({
  String? chatType,
  String? category,
  String? query,
  String? data,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ChatRequestBodyStruct(
      chatType: chatType,
      category: category,
      query: query,
      data: data,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ChatRequestBodyStruct? updateChatRequestBodyStruct(
  ChatRequestBodyStruct? chatRequestBody, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    chatRequestBody
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addChatRequestBodyStructData(
  Map<String, dynamic> firestoreData,
  ChatRequestBodyStruct? chatRequestBody,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (chatRequestBody == null) {
    return;
  }
  if (chatRequestBody.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && chatRequestBody.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final chatRequestBodyData =
      getChatRequestBodyFirestoreData(chatRequestBody, forFieldValue);
  final nestedData =
      chatRequestBodyData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = chatRequestBody.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getChatRequestBodyFirestoreData(
  ChatRequestBodyStruct? chatRequestBody, [
  bool forFieldValue = false,
]) {
  if (chatRequestBody == null) {
    return {};
  }
  final firestoreData = mapToFirestore(chatRequestBody.toMap());

  // Add any Firestore field values
  chatRequestBody.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getChatRequestBodyListFirestoreData(
  List<ChatRequestBodyStruct>? chatRequestBodys,
) =>
    chatRequestBodys
        ?.map((e) => getChatRequestBodyFirestoreData(e, true))
        .toList() ??
    [];
