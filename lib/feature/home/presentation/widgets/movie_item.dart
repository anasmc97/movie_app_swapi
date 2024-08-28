import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/utils.dart';
import 'package:movie_app/feature/home/domain/entities/movie_entity.dart';

/// Movie item
class MovieItem extends StatelessWidget {
  const MovieItem({
    super.key,
    required this.movie,
    required this.onTapItem,
  });

  final Movie movie;
  final GestureTapCallback onTapItem;

  @override
  Widget build(BuildContext context) {
    TextStyle? style = Theme.of(context).textTheme.labelMedium;
    debugPrint('TextStyle: ${style.toString()}');
    return GestureDetector(
      onTap: onTapItem,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Container(
              color: Theme.of(context).colorScheme.primary,
              height: 260,
              child: movie.url.isNotEmpty
                  ? Image.network(
                      Utils.urlToImageUrl(movie.url),
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
          const SizedBox(
            height: 4,
          ),
          Text(
            movie.title,
            style: Theme.of(context).textTheme.labelMedium,
            textAlign: TextAlign.center,
            maxLines: 1,
          )
        ],
      ),
    );
  }
}
