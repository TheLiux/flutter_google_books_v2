import 'package:flutter/material.dart';
import 'package:flutter_google_books_corsov2/core/domain/entities/book.dart';
import 'package:flutter_google_books_corsov2/core/presentation/screens/details_book_page/widgets/details_book_info.dart';

class DetailsBookCard extends StatelessWidget {
  final VoidCallback expandDescription;
  final bool isExpanded;
  final Book book;

  const DetailsBookCard({
    super.key,
    required this.expandDescription,
    required this.book,
    required this.isExpanded,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: DetailsBookInfo(
          expandDescription: expandDescription,
          thumbnail: book.volumeInfo.imageLinks.thumbnail,
          title: book.volumeInfo.title,
          description: book.volumeInfo.description,
          isExpanded: isExpanded,
        ),
      ),
    );
  }
}
