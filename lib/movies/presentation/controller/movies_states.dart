import 'package:clean_arch_movies_app/core/utils/enums.dart';
import 'package:equatable/equatable.dart';

import '../../domain/entities/movie.dart';

class MoviesStates extends Equatable{
  final List<Movie> nowPlayingMovies;
  final RequestState nowPlayingState;
  final String nowPlayingMessage;

  const MoviesStates({this.nowPlayingMovies = const [], this.nowPlayingState = RequestState.loading, this.nowPlayingMessage = ''});

  @override
  // TODO: implement props
  List<Object?> get props => [nowPlayingMovies,nowPlayingState,nowPlayingMessage];
}