import 'package:flutter/material.dart';
import 'package:flutter_google_books_corsov2/core/presentation/screens/details_book_page/widgets/details_book_favourite_button.dart';
import 'package:flutter_google_books_corsov2/core/presentation/screens/details_book_page/widgets/expand_description_button.dart';

class DetailsBookInfo extends StatelessWidget {
  final VoidCallback expandDescription;
  final String title;
  final String description;
  final String thumbnail;
  final bool isExpanded;

  const DetailsBookInfo({
    super.key,
    required this.expandDescription,
    required this.title,
    required this.description,
    required this.thumbnail,
    required this.isExpanded,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 120,
            child: Image.network(
              thumbnail,
            ),
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  description,
                  style: Theme.of(context).textTheme.bodySmall,
                  overflow: isExpanded ? null : TextOverflow.ellipsis,
                  maxLines: isExpanded ? null : 5,
                ),
                ExpandDescriptionButton(
                  expandDescription: expandDescription,
                  label: isExpanded ? 'Riduci Descrizione' : 'Mostra Descrizione',
                ),
              ],
            ),
          ),
          const DetailsBookFavouriteButton(),
        ],
      ),
    );
  }
}
