import 'package:flutter_google_books_corsov2/core/domain/entities/book.dart';

class BooksApiResponse {
  final List<Book> items;

  BooksApiResponse({required this.items});
}