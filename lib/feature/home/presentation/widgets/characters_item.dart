import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/font.dart';
import 'package:movie_app/core/utils/utils.dart';
import 'package:movie_app/feature/home/domain/entities/character_entity.dart';

class CharacterItem extends StatelessWidget {
  final Character character;

  const CharacterItem(this.character, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: SizedBox(
            height: 80,
            width: 70,
            child: (character.url.isNotEmpty)
                ? Image.network(
                    Utils.urlToImageUrl(character.url)
                        .replaceAll('people', 'characters'),
                    fit: BoxFit.cover,
                    errorBuilder: (
                      BuildContext context,
                      Object exception,
                      StackTrace? stackTrace,
                    ) {
                      return const Center(
                        child: Icon(Icons.error),
                      );
                    },
                  )
                : const Center(
                    child: Text("No image available"),
                  ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 6),
          width: 70,
          child: Text(
            character.name,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.clip,
            style: FontStyles.xsRegular(),
          ),
        ),
      ],
    );
  }
}
