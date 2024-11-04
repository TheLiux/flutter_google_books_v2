import 'package:flutter_google_books_corsov2/core/domain/entities/volume_info.dart';
import 'package:json_annotation/json_annotation.dart';

part 'book.g.dart';

@JsonSerializable()
class Book {
  final String id;
  final VolumeInfo volumeInfo;

  Book({required this.id, required this.volumeInfo});

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);

  Map<String, dynamic> toJson() => _$BookToJson(this);
}
