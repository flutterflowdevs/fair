import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start FairLand Group Code

class FairLandGroup {
  static String baseUrl = 'https://mzogaauipbtwkzdajtlz.functions.supabase.co';
  static Map<String, String> headers = {};
  static GetAmusementParkDetailsByIdCall getAmusementParkDetailsByIdCall =
      GetAmusementParkDetailsByIdCall();
  static GetAllAmusementParksDetailsCall getAllAmusementParksDetailsCall =
      GetAllAmusementParksDetailsCall();
  static GetAllAmusementParkWhereRatingIsGreaterThanAndTypeContainsTypeAndOrderByDecreasingCall
      getAllAmusementParkWhereRatingIsGreaterThanAndTypeContainsTypeAndOrderByDecreasingCall =
      GetAllAmusementParkWhereRatingIsGreaterThanAndTypeContainsTypeAndOrderByDecreasingCall();
  static CreateFairTicketCall createFairTicketCall = CreateFairTicketCall();
  static GetListOfUserFavCall getListOfUserFavCall = GetListOfUserFavCall();
  static GetAllFairTicketsCall getAllFairTicketsCall = GetAllFairTicketsCall();
  static AddToUsersFavCall addToUsersFavCall = AddToUsersFavCall();
  static GetAuthenticateUserRecordsCall getAuthenticateUserRecordsCall =
      GetAuthenticateUserRecordsCall();
}

class GetAmusementParkDetailsByIdCall {
  Future<ApiCallResponse> call({
    String? methodUrl = '',
    int? id,
  }) {
    final body = '''
{
  "method_type": "GET",
  "method_url": "${methodUrl}",
  "query_params": {
    "id": ${id}
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Get amusementPark Details by Id',
      apiUrl: '${FairLandGroup.baseUrl}/dart_edge',
      callType: ApiCallType.POST,
      headers: {
        ...FairLandGroup.headers,
        'Content-Type': 'applicationn/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic data(dynamic response) => getJsonField(
        response,
        r'''$.data[0]''',
      );
  dynamic typesList(dynamic response) => getJsonField(
        response,
        r'''$.data[0].types''',
        true,
      );
  dynamic rating(dynamic response) => getJsonField(
        response,
        r'''$.data[0].rating''',
      );
  dynamic createdAt(dynamic response) => getJsonField(
        response,
        r'''$.data[0].created_at''',
      );
  dynamic title(dynamic response) => getJsonField(
        response,
        r'''$.data[0].title''',
      );
  dynamic imageUrl(dynamic response) => getJsonField(
        response,
        r'''$.data[0].img''',
      );
}

class GetAllAmusementParksDetailsCall {
  Future<ApiCallResponse> call({
    String? methodUrl = '',
  }) {
    final body = '''
{
  "method_type": "GET",
  "method_url": "${methodUrl}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Get All amusement Parks Details',
      apiUrl: '${FairLandGroup.baseUrl}/dart_edge',
      callType: ApiCallType.POST,
      headers: {
        ...FairLandGroup.headers,
        'Content-Type': 'applicationn/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic allAmusementPark(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      );
}

class GetAllAmusementParkWhereRatingIsGreaterThanAndTypeContainsTypeAndOrderByDecreasingCall {
  Future<ApiCallResponse> call({
    String? methodUrl = '',
    int? rating,
    List<String>? typesList,
    String? orderBy = '',
  }) {
    final types = _serializeList(typesList);

    final body = '''
{
  "method_type": "GET",
  "method_url": "${methodUrl}",
  "query_params": {
    "rating": ${rating},
    "types": ${types},
    "order_by": "${orderBy}"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName:
          'Get All amusement Park where rating is greater than  and type contains Type and order by Decreasing ',
      apiUrl: '${FairLandGroup.baseUrl}/dart_edge',
      callType: ApiCallType.POST,
      headers: {
        ...FairLandGroup.headers,
        'Content-Type': 'applicationn/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic typeGreaterThan3(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      );
}

class CreateFairTicketCall {
  Future<ApiCallResponse> call({
    String? methodUrl = '',
    int? standardCount,
    int? standardPrice,
    int? expressCount,
    int? expressPrice,
    int? vipCount,
    int? vipPrice,
    String? userId = '',
  }) {
    final body = '''
{
  "method_type": "POST",
  "method_url": "${methodUrl}",
  "data": {
    "standard_count": ${standardCount},
    "express_count": ${expressCount},
    "vip_count": ${vipCount},
    "standard_price": ${standardPrice},
    "express_price": ${expressPrice},
    "vip_price": ${vipPrice},
    "user_id": "${userId}"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create Fair Ticket ',
      apiUrl: '${FairLandGroup.baseUrl}/dart_edge',
      callType: ApiCallType.POST,
      headers: {
        ...FairLandGroup.headers,
        'Content-Type': 'applicationn/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic createFairTicket(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      );
}

class GetListOfUserFavCall {
  Future<ApiCallResponse> call({
    String? methodUrl = '',
    int? userId,
  }) {
    final body = '''
{
  "method_type": "GET",
  "method_url": "${methodUrl}",
  "query_params": {
    "id": ${userId}
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Get List of user fav',
      apiUrl: '${FairLandGroup.baseUrl}/dart_edge',
      callType: ApiCallType.POST,
      headers: {
        ...FairLandGroup.headers,
        'Content-Type': 'applicationn/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic getListOfUserFav(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      );
}

class GetAllFairTicketsCall {
  Future<ApiCallResponse> call({
    String? methodUrl = '',
    String? userId = '',
  }) {
    final body = '''
{
  "method_type": "GET",
  "method_url": "${methodUrl}",
  "query_params": {
    "user_id": "${userId}"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Get All Fair Tickets ',
      apiUrl: '${FairLandGroup.baseUrl}/dart_edge',
      callType: ApiCallType.POST,
      headers: {
        ...FairLandGroup.headers,
        'Content-Type': 'applicationn/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic getAllFairTicket(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      );
}

class AddToUsersFavCall {
  Future<ApiCallResponse> call({
    String? methodUrl = '',
    int? userId,
  }) {
    final body = '''
{
  "method_type": "GET",
  "method_url": "${methodUrl}",
  "query_params": {
    "id": ${userId}
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add to users fav',
      apiUrl: '${FairLandGroup.baseUrl}/dart_edge',
      callType: ApiCallType.POST,
      headers: {
        ...FairLandGroup.headers,
        'Content-Type': 'applicationn/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic allUserFav(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      );
}

class GetAuthenticateUserRecordsCall {
  Future<ApiCallResponse> call({
    String? userId = '',
  }) {
    final body = '''
{
  "method_type": "GET",
  "method_url": "get_user_detail_by_id",
  "query_params": {
    "id": "${userId}"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Get Authenticate User Records',
      apiUrl: '${FairLandGroup.baseUrl}/dart_edge',
      callType: ApiCallType.POST,
      headers: {
        ...FairLandGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic userRecord(dynamic response) => getJsonField(
        response,
        r'''$.data[0]''',
      );
}

/// End FairLand Group Code

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
