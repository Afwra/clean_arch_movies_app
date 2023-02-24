import 'package:clean_arch_movies_app/movies/domain/entities/movie.dart';
import 'package:clean_arch_movies_app/movies/domain/repositories/base_movies_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../core/error/failure.dart';

class GetPopularMoviesUseCase{
  BaseMoviesRepository baseMoviesRepository;

  GetPopularMoviesUseCase(this.baseMoviesRepository);

  Future<Either<Failure,List<Movie>>> exec()async{
    return await baseMoviesRepository.getPopularMovies();
  }
}