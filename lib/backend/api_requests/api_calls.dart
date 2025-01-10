import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start GetUsers Group Code

class GetUsersGroup {
  static String getBaseUrl() => 'https://0eadf0e3ef03e4.lhr.life';
  static Map<String, String> headers = {};
  static ChatCall chatCall = ChatCall();
  static ChatVoiceCall chatVoiceCall = ChatVoiceCall();
  static VoiceCall voiceCall = VoiceCall();
}

class ChatCall {
  Future<ApiCallResponse> call({
    String? chatType = '',
    String? category = '',
    String? query = '',
  }) async {
    final baseUrl = GetUsersGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "type": "${escapeStringForJson(chatType)}",
  "category": "${escapeStringForJson(category)}",
  "query": "${escapeStringForJson(query)}",
  "data": {
    "balance": 21040,
    "budget_plan": [
      {
        "category": "food",
        "allocated_amount": 500,
        "start_date": "01-11-2023",
        "end_date": "30-11-2023"
      },
      {
        "category": "housing",
        "allocated_amount": 1200,
        "start_date": "01-11-2023",
        "end_date": "30-11-2023"
      }
    ],
    "expense_tracking": [
      {
        "category": "food",
        "expense_amount": 500,
        "expense_date": "15-11-2023"
      },
      {
        "category": "utilities",
        "expense_amount": 1200,
        "expense_date": "18-11-2023"
      }
    ],
    "savings_insights": [
      {
        "month_year": "11-2023",
        "total_income": 5000,
        "total_expense": 4000,
        "total_savings": 1000,
        "savings_rate": 20
      }
    ]
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'chat',
      apiUrl: '${baseUrl}api/chat',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ChatVoiceCall {
  Future<ApiCallResponse> call({
    FFUploadedFile? audioFile,
  }) async {
    final baseUrl = GetUsersGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'chat voice ',
      apiUrl: '$baseUrl/voice',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'file': audioFile,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class VoiceCall {
  Future<ApiCallResponse> call({
    String? file = '',
  }) async {
    final baseUrl = GetUsersGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'voice',
      apiUrl: '$baseUrl/voice',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'file': file,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End GetUsers Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
