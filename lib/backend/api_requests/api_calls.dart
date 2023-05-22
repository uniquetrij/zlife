import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetLoginUserDetailsCall {
  static Future<ApiCallResponse> call({
    String? select = 'eq.150fd78c-3672-4fbd-b0d4-38ef4b95e80c',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Login User Details',
      apiUrl: 'https://hnexafstehowaxwxdhcq.supabase.co/rest/v1/users',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImhuZXhhZnN0ZWhvd2F4d3hkaGNxIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODQzMTcwMzksImV4cCI6MTk5OTg5MzAzOX0.Ho2Kq2z-w1_IqCiKgPkwqnSzhoxOZ8AK2KLGAQ_vBRA',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImhuZXhhZnN0ZWhvd2F4d3hkaGNxIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODQzMTcwMzksImV4cCI6MTk5OTg5MzAzOX0.Ho2Kq2z-w1_IqCiKgPkwqnSzhoxOZ8AK2KLGAQ_vBRA',
      },
      params: {
        'select': "*",
        'id': select,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class AllProeductByOrdersCall {
  static Future<ApiCallResponse> call({
    String? select = 'eq.d7386515-7b01-496f-977f-fa3a3540965b',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'All Proeduct By Orders',
      apiUrl: 'https://hnexafstehowaxwxdhcq.supabase.co/rest/v1/order',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImhuZXhhZnN0ZWhvd2F4d3hkaGNxIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODQzMTcwMzksImV4cCI6MTk5OTg5MzAzOX0.Ho2Kq2z-w1_IqCiKgPkwqnSzhoxOZ8AK2KLGAQ_vBRA',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImhuZXhhZnN0ZWhvd2F4d3hkaGNxIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODQzMTcwMzksImV4cCI6MTk5OTg5MzAzOX0.Ho2Kq2z-w1_IqCiKgPkwqnSzhoxOZ8AK2KLGAQ_vBRA',
      },
      params: {
        'select': "*,Product(*)",
        'status': "eq.SUCCESS",
        'recycler_id': select,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
