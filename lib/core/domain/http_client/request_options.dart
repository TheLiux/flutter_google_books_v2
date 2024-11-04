import 'package:dio/dio.dart' as dio;

class RequestOptions {
  final String? path;
  final String? data;

  RequestOptions(this.path, this.data);

  static RequestOptions fromDioResponse(dio.RequestOptions requestOptions) {
    return RequestOptions(requestOptions.path, requestOptions.data);
  }

  dio.RequestOptions toDioResponse() => dio.RequestOptions(
        path: path ?? '',
        data: data,
      );
}
