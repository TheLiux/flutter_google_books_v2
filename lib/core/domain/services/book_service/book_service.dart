import 'package:flutter_google_books_corsov2/core/domain/entities/book.dart';
import 'package:flutter_google_books_corsov2/core/domain/repositories/i_book_repository.dart';
import 'package:flutter_google_books_corsov2/core/domain/services/book_service/i_book_service.dart';

class BookService implements IBookService {
  final IBookRepository bookRepository;

  BookService({required this.bookRepository});

  @override
  Future<List<Book>?> getBooksByQuery(String query) async {
    try {
      final books = await bookRepository.getBooksByQuery(query);

      return books.items;
    } catch (e) {
      //TODO handleException
      return null;
    }
  }

  @override
  Future<List<Book>?> getBooksBySubject(String subject) async {
    try {
      final books = await bookRepository.getBooksBySubject(subject);

      return books.items;
    } catch (e) {
      //TODO handleException
      return null;
    }
  }
}
