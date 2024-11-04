import 'package:flutter_google_books_corsov2/core/domain/entities/book.dart';

class User {
  final String id;
  final List<Book> favourites;

  User({required this.id, required this.favourites});
}
