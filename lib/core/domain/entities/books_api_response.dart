import 'package:flutter_google_books_corsov2/core/domain/entities/book.dart';
import 'package:json_annotation/json_annotation.dart';

part 'books_api_response.g.dart';

@JsonSerializable()
class BooksApiResponse {
  final List<Book> items;

  BooksApiResponse({required this.items});

  factory BooksApiResponse.fromJson(Map<String, dynamic> json) => _$BooksApiResponseFromJson(json);

  Map<String,dynamic> toJson() => _$BooksApiResponseToJson(this);
}
