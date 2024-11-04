import 'package:json_annotation/json_annotation.dart';

part 'volume_info.g.dart';

@JsonSerializable()
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

  factory VolumeInfo.fromJson(Map<String, dynamic> json) => _$VolumeInfoFromJson(json);

  Map<String, dynamic> toJson() => _$VolumeInfoToJson(this);
}
