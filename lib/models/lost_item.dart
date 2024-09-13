import 'package:json_annotation/json_annotation.dart';

part 'lost_item.g.dart';

@JsonSerializable()
class LostItem {
  final String id;
  final String title;
  final String description;

  LostItem({
    required this.id,
    required this.title,
    required this.description,
  });

  factory LostItem.fromJson(Map<String, dynamic> json) => _$LostItemFromJson(json);
  Map<String, dynamic> toJson() => _$LostItemToJson(this);
}
