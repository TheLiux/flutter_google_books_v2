import 'package:flutter_google_books_corsov2/core/domain/entities/books_api_response.dart';

abstract class IBookRepository {
  Future<BooksApiResponse> getBooksByQuery(String query);

  Future<BooksApiResponse> getBooksBySubject(String query);
}
