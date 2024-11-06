import 'package:flutter/material.dart';
import 'package:flutter_google_books_corsov2/core/domain/entities/book.dart';
import 'package:flutter_google_books_corsov2/core/presentation/screens/details_book_page/widgets/details_book_card.dart';

class DetailsBookBody extends StatelessWidget {
  final bool isExpanded;
  final VoidCallback expandDescription;
  final Book book;

  const DetailsBookBody({
    super.key,
    this.isExpanded = false,
    required this.expandDescription,
    required this.book,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          DetailsBookCard(
            book: book,
            isExpanded: isExpanded,
            expandDescription: expandDescription,
          )
        ],
      ),
    );
  }
}
