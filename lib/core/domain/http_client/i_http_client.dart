import 'package:flutter_google_books_corsov2/core/domain/http_client/response.dart';

abstract class IHttpClient {
  Future<Response<T>> get<T>({String? path, Map<String, dynamic>? queryParams});

  Future<Response<T>> post<T>({String? path, Map<String, dynamic>? queryParams});
}
