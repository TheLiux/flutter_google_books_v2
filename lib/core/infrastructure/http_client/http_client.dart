import 'package:flutter_google_books_corsov2/core/domain/http_client/i_http_client.dart';
import 'package:dio/dio.dart' as dio;
import 'package:flutter_google_books_corsov2/core/domain/http_client/response.dart';

class HttpClient implements IHttpClient {
  static const String _baseUrl = 'https://www.googleapis.com/books/v1/volumes';

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
    final response = await _httpClient.get<T>(
      path ?? '',
      queryParameters: queryParams,
    );

    return Response.fromDioResponse<T>(response);
  }

  @override
  Future<Response<T>> post<T>({
    String? path,
    Map<String, dynamic>? queryParams,
  }) async {
    final response = await _httpClient.post<T>(
      path ?? '',
      queryParameters: queryParams,
    );

    return Response.fromDioResponse<T>(response);
  }
}
