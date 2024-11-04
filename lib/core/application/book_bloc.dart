import 'package:bloc/bloc.dart';
import 'package:flutter_google_books_corsov2/core/domain/entities/book.dart';
import 'package:flutter_google_books_corsov2/core/domain/services/book_service/i_book_service.dart';
import 'package:meta/meta.dart';

part 'book_event.dart';

part 'book_state.dart';

class BookBloc extends Bloc<BookEvent, BookState> {
  final IBookService bookService;

  BookBloc(this.bookService) : super(BookInitial()) {
    on<BookEvent>((event, emit) async {
      emit(BookLoading());

      if (event is BookFetchByQuery) {
        try {
          final books = await bookService.getBooksByQuery(event.query);

          emit(BookLoaded(books: books ?? []));
        } catch (e, s) {
          emit(BookError(e, s));
        }
      }

      if (event is BookFetchBySubject) {
        try {
          final books = await bookService.getBooksBySubject(event.subject);

          emit(BookLoaded(books: books ?? []));
        } catch (e, s) {
          emit(BookError(e, s));
        }
      }
    });
  }
}
