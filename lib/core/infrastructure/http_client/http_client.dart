import 'package:flutter_google_books_corsov2/core/domain/http_client/i_http_client.dart';
import 'package:dio/dio.dart' as dio;
import 'package:flutter_google_books_corsov2/core/domain/http_client/response.dart';
import 'package:flutter_google_books_corsov2/core/domain/logger/logger.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: IHttpClient)
class HttpClient implements IHttpClient {
  static const String _baseUrl = 'https://www.googleapis.com/books/v1/volumes';
  final ILogger _logger;

  HttpClient(this._logger);

  final _httpClient = dio.Dio(
    dio.BaseOptions(
      baseUrl: _baseUrl,
    ),
  );

  @override
  Future<Response<T>> get<T>({
    String? path,
    Map<String, dynamic>? queryParams,
  }) async {
    try {
      final response = await _httpClient.get<T>(
        path ?? '',
        queryParameters: queryParams,
      );

      return Response.fromDioResponse<T>(response);
    } catch (e, s) {
      _logger.error('Http Error - Get', e: e, s: s);
      rethrow;
    }
  }

  @override
  Future<Response<T>> post<T>({
    String? path,
    Map<String, dynamic>? queryParams,
  }) async {
    try {
      final response = await _httpClient.post<T>(
        path ?? '',
        queryParameters: queryParams,
      );

      return Response.fromDioResponse<T>(response);
    } catch (e, s) {
      _logger.error('Http Error - Post', e: e, s: s);
      rethrow;
    }
  }
}
