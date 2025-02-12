import 'package:flutter/material.dart';
import 'package:mobile_starter_kit/helpers/classes/index.dart';
import 'package:mobile_starter_kit/helpers/providers/movies.dart';

class SuggestionMovies extends StatelessWidget {
  const SuggestionMovies({super.key, required this.isShowTitle});

  final bool isShowTitle;

  @override
  Widget build(BuildContext context) {
    final MoviesProvider moviesProvider = MoviesProvider();
    final List<Movie> suggestionMovies = moviesProvider.suggestionMovies;
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10.0),
          height: 350.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              for (final movie in suggestionMovies)
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    width: 220.0,
                    child: Image.asset(
                      movie.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
            ],
          ),
        ),
        if (isShowTitle)
          Column(
            children: [
              Text(
                'Episode 1',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Text('Pow Pow', style: Theme.of(context).textTheme.bodyLarge)
            ],
          ),
      ],
    );
  }
}
