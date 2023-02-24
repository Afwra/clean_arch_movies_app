import 'package:clean_arch_movies_app/movies/domain/entities/movie.dart';

class MoviesModel extends Movie {
  const MoviesModel({
    required super.id,
    required super.title,
    required super.backdropPath,
    required super.genderIds,
    required super.overview,
    required super.voteAvg,
    required super.realeaseDate,
  });


  factory MoviesModel.fromJson(Map<String,dynamic> json){
    return MoviesModel(
      id:  json['id'],
      title: json['title'],
      backdropPath: json['backdrop_path'],
      genderIds: List<int>.from(json['genre_ids'].map((e)=>e)),
      overview: json['overview'],
      voteAvg: json['vote_average'],
      realeaseDate: json['release_date'],
    );
  }
}
