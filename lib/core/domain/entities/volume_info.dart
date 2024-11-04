class VolumeInfo {
  final String title;
  final List<String> authors;
  final String publisher;
  final String description;
  final int pageCount;
  final List<String> imageLinks;

  VolumeInfo({
    required this.title,
    required this.authors,
    required this.publisher,
    required this.description,
    required this.pageCount,
    required this.imageLinks,
  });

  String get formattedAuthors {
    if (authors.length == 1) {
      return authors.first;
    }

    return authors.fold('', (prev, curr) {
      return '$prev - $curr';
    });
  }
}
