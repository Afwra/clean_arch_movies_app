import 'package:clean_arch_movies_app/core/utils/enums.dart';
import 'package:clean_arch_movies_app/movies/domain/use_cases/get_now_playing_movies.dart';
import 'package:clean_arch_movies_app/movies/presentation/controller/movies_events.dart';
import 'package:clean_arch_movies_app/movies/presentation/controller/movies_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MoviesBloc extends Bloc<MoviesEvent,MoviesStates>{

  final GetNowPlayingMoviesUseCase getNowPlayingMoviesUseCase;

  MoviesBloc(this.getNowPlayingMoviesUseCase) : super(const MoviesStates()){
    on<GetNowPlayingMoviesEvent>((event, emit) async {
      final result =  await getNowPlayingMoviesUseCase.execute();
      debugPrint(result.toString());
      emit(const MoviesStates(nowPlayingState: RequestState.loaded));
      result.fold((l) => emit(MoviesStates(nowPlayingState: RequestState.error,nowPlayingMessage: l.message)), (r) => emit(MoviesStates(nowPlayingMovies: r,nowPlayingState: RequestState.loaded)));
    });
  }

}