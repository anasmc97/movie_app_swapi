import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_entity.freezed.dart';

@freezed
class Character with _$Character {
  const factory Character({
    required String name,
    required String url,
  }) = _Character;
}
