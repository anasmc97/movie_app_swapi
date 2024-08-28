import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/feature/home/domain/entities/character_entity.dart';

part 'character_model.freezed.dart';
part 'character_model.g.dart';

@freezed
class CharacterModel with _$CharacterModel {
  const factory CharacterModel({
    required String? name,
    required String? url,
  }) = _CharacterModel;

  factory CharacterModel.fromJson(Map<String, dynamic> json) =>
      _$CharacterModelFromJson(json);

  factory CharacterModel.fromDomain(Character form) => CharacterModel(
        name: form.name,
        url: form.url,
      );
}

extension CharacterModelX on CharacterModel {
  Character toDomain() => Character(
        name: name ?? '',
        url: url ?? '',
      );
}
