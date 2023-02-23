import '../entities/movie.dart';
import '../repositories/base_movies_repository.dart';

class GetTopRatedMoviesUseCase{
  BaseMoviesRepository baseMoviesRepository;

  GetTopRatedMoviesUseCase(this.baseMoviesRepository);

  Future<List<Movie>> exec()async{
    return await baseMoviesRepository.getTopRatedMovies();
  }
}