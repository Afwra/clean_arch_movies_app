import 'package:clean_arch_movies_app/movies/presentation/controller/movies_bloc.dart';
import 'package:clean_arch_movies_app/movies/presentation/controller/movies_events.dart';
import 'package:clean_arch_movies_app/movies/presentation/controller/movies_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/services/services_locator.dart';

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) {
          return MoviesBloc(sl())..add(GetNowPlayingMoviesEvent());
        },
        child:  BlocBuilder<MoviesBloc,MoviesStates>(
          builder: (context,state)=>const Scaffold(),
        ));
  }
}
