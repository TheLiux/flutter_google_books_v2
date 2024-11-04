import 'package:flutter_google_books_corsov2/core/domain/entities/book.dart';
import 'package:flutter_google_books_corsov2/core/domain/logger/logger.dart';
import 'package:flutter_google_books_corsov2/core/domain/repositories/i_book_repository.dart';
import 'package:flutter_google_books_corsov2/core/domain/services/book_service/i_book_service.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: IBookService)
class BookService implements IBookService {
  final IBookRepository _bookRepository;
  final ILogger _logger;

  BookService(this._bookRepository, this._logger);

  @override
  Future<List<Book>?> getBooksByQuery(String query) async {
    try {
      final books = await _bookRepository.getBooksByQuery(query);

      return books.items;
    } catch (e, s) {
      _logger.error(
        'Book Service - getBooksByQuery',
        e: e,
        s: s,
      );

      rethrow;
    }
  }

  @override
  Future<List<Book>?> getBooksBySubject(String subject) async {
    try {
      final books = await _bookRepository.getBooksBySubject(subject);

      return books.items;
    } catch (e, s) {
      _logger.error(
        'Book Service - getBooksByQuery',
        e: e,
        s: s,
      );

      rethrow;
    }
  }
}
