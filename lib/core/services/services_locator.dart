import 'package:clean_arch_movies_app/movies/data/data_sources/movie_remote_data_source.dart';
import 'package:clean_arch_movies_app/movies/data/repositories/movies_repository.dart';
import 'package:clean_arch_movies_app/movies/domain/repositories/base_movies_repository.dart';
import 'package:clean_arch_movies_app/movies/presentation/controller/movies_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../movies/domain/use_cases/get_now_playing_movies.dart';

final sl = GetIt.instance;

class ServiceLocator{

  static void init(){
    ///bloc
    sl.registerFactory(() => MoviesBloc(sl()));

    ///use case
    sl.registerLazySingleton(() => GetNowPlayingMoviesUseCase(sl()));
    /// Repository
    sl.registerLazySingleton<BaseMoviesRepository>(() => MoviesRepository(sl()));
    /// Data Source
    sl.registerLazySingleton<BaseMovieRemoteDataSource>(() => MovieRemoteDataSource());
  }
}