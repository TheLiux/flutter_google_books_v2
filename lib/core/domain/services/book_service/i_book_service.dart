import 'package:flutter_google_books_corsov2/core/domain/entities/book.dart';

abstract class IBookService {
  Future<List<Book>?> getBooksByQuery(String query);

  Future<List<Book>?> getBooksBySubject(String subject);
}
