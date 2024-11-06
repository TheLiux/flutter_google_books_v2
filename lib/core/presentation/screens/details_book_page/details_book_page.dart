import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_google_books_corsov2/core/domain/entities/book.dart';
import 'package:flutter_google_books_corsov2/core/presentation/screens/details_book_page/widgets/details_book_body.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

@RoutePage()
class DetailsBookPage extends HookWidget {
  final Book book;

  const DetailsBookPage({
    required this.book,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isExpanded = useState(false);

    return Scaffold(
      appBar: AppBar(
        title: Text(book.volumeInfo.title),
      ),
      body: DetailsBookBody(
        book: book,
        isExpanded: isExpanded.value,
        expandDescription: () => isExpanded.value = !isExpanded.value,
      ),
    );
  }
}
