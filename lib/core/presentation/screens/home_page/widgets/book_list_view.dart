import 'package:flutter/material.dart';
import 'package:flutter_google_books_corsov2/core/domain/entities/book.dart';
import 'package:flutter_google_books_corsov2/core/presentation/screens/home_page/widgets/book_list_tile.dart';

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

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, index) => BookListTile(book: books[index]),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: books.length,
      ),
    );
  }
}
