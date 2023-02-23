import 'package:clean_arch_movies_app/movies/domain/entities/movie.dart';
import 'package:clean_arch_movies_app/movies/domain/repositories/base_movies_repository.dart';

class GetPopularMoviesUseCase{
  BaseMoviesRepository baseMoviesRepository;

  GetPopularMoviesUseCase(this.baseMoviesRepository);

  Future<List<Movie>> exec()async{
    return await baseMoviesRepository.getPopularMovies();
  }
}