import 'package:clean_arch_movies_app/movies/domain/entities/movie.dart';
import 'package:clean_arch_movies_app/movies/domain/repositories/base_movies_repository.dart';

class GetNowPlayingMoviesUseCase{
  final BaseMoviesRepository baseMoviesRepository;
  GetNowPlayingMoviesUseCase(this.baseMoviesRepository); //because it's abstract class and can't initalize an object


  Future<List<Movie>> execute()async{
    return await baseMoviesRepository.getNowPlaying();
  }
}