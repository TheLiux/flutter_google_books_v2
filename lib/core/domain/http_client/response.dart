import 'dart:convert';
import 'package:dio/dio.dart' as dio;
import 'package:flutter_google_books_corsov2/core/domain/http_client/headers.dart';
import 'package:flutter_google_books_corsov2/core/domain/http_client/request_options.dart';

class Response<T> {
  Response({
    this.data,
    required this.requestOptions,
    this.statusCode,
    this.statusMessage,
    this.isRedirect = false,
    Map<String, dynamic>? extra,
    Headers? headers,
  })  : headers = headers ?? Headers(),
        extra = extra ?? <String, dynamic>{};
  T? data;
  RequestOptions requestOptions;
  int? statusCode;
  String? statusMessage;
  Headers headers;
  bool isRedirect;
  Map<String, dynamic> extra;

  @override
  String toString() {
    if (data is Map) {
      return json.encode(data);
    }
    return data.toString();
  }

  static Response<T> fromDioResponse<T>(dio.Response response) => Response<T>(
        data: response.data,
        requestOptions: RequestOptions.fromDioResponse(response.requestOptions),
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
        isRedirect: response.isRedirect,
        extra: response.extra,
        headers: Headers.fromDioResponse(response.headers),
      );

  dio.Response toDioResponse() {
    return dio.Response(
      data: data,
      requestOptions: requestOptions.toDioResponse(),
      statusCode: statusCode,
      statusMessage: statusMessage,
      isRedirect: isRedirect,
      extra: extra,
      headers: headers.toDioResponse(),
    );
  }
}
