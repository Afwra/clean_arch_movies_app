class ApiConstants{
  static const String baseUrl = 'https://api.themoviedb.org/3';
  static const String apiKey = '';

  static const String nowPlayingPath = '$baseUrl/movie/now_playing?api_key=$apiKey';
  static const String popularMoviesPath = '$baseUrl/movie/popular?api_key=$apiKey';
  static const String topRatedMoviesPath = '$baseUrl/movie/top_rated?api_key=$apiKey';
}
