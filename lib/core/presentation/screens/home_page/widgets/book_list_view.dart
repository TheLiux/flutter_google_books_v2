import 'package:flutter/material.dart';
import 'package:flutter_google_books_corsov2/core/domain/entities/book.dart';

class BookListView extends StatelessWidget {
  final List<Book> books;

  const BookListView({
    super.key,
    this.books = const [],
  });

  @override
  Widget build(BuildContext context) {
    if (books.isEmpty) {
      return const Center(
        child: Text('Nessun risultato trovato!'),
      );
    }

    return ListView.separated(
      shrinkWrap: true,
      itemBuilder: (context, index) => ListTile(
        title: Text(books[index].volumeInfo.title),
      ),
      separatorBuilder: (context, index) => const Divider(),
      itemCount: books.length,
    );
  }
}
