import 'package:dio/dio.dart' as dio;

class Headers {
  final Map<String, List<String>> map;
  final bool preserveHeaderCase;

  Headers({
    this.map = const {},
    this.preserveHeaderCase = false,
  });

  static Headers fromDioResponse(dio.Headers headers) => Headers(
        map: headers.map,
        preserveHeaderCase: headers.preserveHeaderCase,
      );

  dio.Headers toDioResponse() => dio.Headers.fromMap(map, preserveHeaderCase: preserveHeaderCase);
}
