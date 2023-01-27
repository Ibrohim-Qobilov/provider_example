import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

class FavoriteEntity extends Equatable {
  @JsonKey(name: 'title', defaultValue: '')
  final String title;
  @JsonKey(name: 'subTitle', defaultValue: '')
  final String subTitle;
  const FavoriteEntity({
    required this.title,
    required this.subTitle,
  });

  @override
  List<Object?> get props => [
        title,
        subTitle,
      ];
}
