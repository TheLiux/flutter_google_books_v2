import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_google_books_corsov2/core/domain/entities/book.dart';
import 'package:flutter_google_books_corsov2/route.gr.dart';

class BookListTile extends StatelessWidget {
  final Book book;

  const BookListTile({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: SizedBox(
          height: 45,
          width: 45,
          child: Image.network(
            book.volumeInfo.imageLinks.smallThumbnail,
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
      title: Text(book.volumeInfo.title),
      subtitle: Text(
        book.volumeInfo.description,
        overflow: TextOverflow.ellipsis,
        maxLines: 3,
      ),
      trailing: IconButton(
        onPressed: () => context.router.push(
          DetailsBookRoute(book: book),
        ),
        icon: const Icon(
          Icons.chevron_right,
        ),
      ),
    );
  }
}
