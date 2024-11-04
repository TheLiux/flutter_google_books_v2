part of 'book_bloc.dart';

sealed class BookEvent {}

class BookFetchByQuery extends BookEvent {
  final String query;

  BookFetchByQuery({required this.query});
}

class BookFetchBySubject extends BookEvent {
  final String subject;

  BookFetchBySubject({required this.subject});
}