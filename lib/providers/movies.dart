import '../classes/index.dart';

class MoviesProvider {
  static MoviesProvider get shared => MoviesProvider();

  List<Movie> get suggestionMovies => const [
        Movie(
            id: '1', name: 'Arcane', image: 'assets/images/movies/arcane.jpg'),
        Movie(
            id: '2',
            name: 'Captain Marvel',
            image: 'assets/images/movies/arcane.jpg'),
        Movie(id: '3', name: 'Joker', image: 'assets/images/movies/arcane.jpg'),
        Movie(
            id: '4', name: 'Hobbit', image: 'assets/images/movies/arcane.jpg'),
      ];
}
