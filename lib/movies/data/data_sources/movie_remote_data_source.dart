import 'package:clean_arch_movies_app/core/error/exceptions.dart';
import 'package:clean_arch_movies_app/core/network/api_constants.dart';
import 'package:clean_arch_movies_app/core/network/error_message_model.dart';
import 'package:clean_arch_movies_app/movies/data/models/movies_model.dart';
import 'package:dio/dio.dart';


abstract class BaseMovieRemoteDataSource{
  Future<List<MoviesModel>> getNowPlayingMovies();
  Future<List<MoviesModel>> getPopularMovies();
  Future<List<MoviesModel>> getTopRatedMovies();
}


class MovieRemoteDataSource extends BaseMovieRemoteDataSource{


  @override
  Future<List<MoviesModel>> getNowPlayingMovies()async{
    final response = await Dio().get(ApiConstants.nowPlayingPath);

    if(response.statusCode == 200){
      return List<MoviesModel>.from((response.data["results"] as List).map(
            (e) => MoviesModel.fromJson(e),
      ));
    }else{
      throw ServerException(errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<MoviesModel>> getPopularMovies() async{
    final response = await Dio().get(ApiConstants.popularMoviesPath);

    if(response.statusCode == 200){
      return List<MoviesModel>.from((response.data["results"] as List).map(
            (e) => MoviesModel.fromJson(e),
      ));
    }else{
      throw ServerException(errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<MoviesModel>> getTopRatedMovies() async{
    final response = await Dio().get(ApiConstants.topRatedMoviesPath);

    if(response.statusCode == 200){
      return List<MoviesModel>.from((response.data["results"] as List).map(
            (e) => MoviesModel.fromJson(e),
      ));
    }else{
      throw ServerException(errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }
}