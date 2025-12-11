import 'package:ap_mvvm/models/pelicula.model.dart';

class PeliculaService {
  Future<List<Pelicula>> fetchPeliculas() async {
    await Future.delayed(const Duration(seconds: 3));

    return [
      Pelicula('Inception', 'Christopher Nolan', 2010, 'Sci-Fi'),
      Pelicula('The Dark Knight', 'Christopher Nolan', 2008, 'Action'),
      Pelicula('Interstellar', 'Christopher Nolan', 2014, 'Sci-Fi'),
      Pelicula('Pulp Fiction', 'Quentin Tarantino', 1994, 'Crime'),
      Pelicula('The Matrix', 'The Wachowskis', 1999, 'Sci-Fi'),
    ];
  }
}