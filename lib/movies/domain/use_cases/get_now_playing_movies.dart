import 'package:clean_arch_movies_app/movies/domain/entities/movie.dart';
import 'package:clean_arch_movies_app/movies/domain/repositories/base_movies_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';

class GetNowPlayingMoviesUseCase{
  final BaseMoviesRepository baseMoviesRepository;
  GetNowPlayingMoviesUseCase(this.baseMoviesRepository); //because it's abstract class and can't initialize an object


  Future<Either<Failure,List<Movie>>> execute()async{
    return await baseMoviesRepository.getNowPlayingMovies();
  }
}