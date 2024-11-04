import 'package:flutter_google_books_corsov2/core/domain/entities/books_api_response.dart';
import 'package:flutter_google_books_corsov2/core/domain/http_client/i_http_client.dart';
import 'package:flutter_google_books_corsov2/core/domain/repositories/i_book_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: IBookRepository)
class BookRepository implements IBookRepository {
  final IHttpClient _httpClient;

  BookRepository(this._httpClient);

  @override
  Future<BooksApiResponse> getBooksByQuery(String query) async {
    final response = await _httpClient.get(queryParams: {'q': query});

    return BooksApiResponse.fromJson(response.data);
  }

  @override
  Future<BooksApiResponse> getBooksBySubject(String subject) async {
    final response = await _httpClient.get(queryParams: {'subject': subject});

    return BooksApiResponse.fromJson(response.data);
  }
}
