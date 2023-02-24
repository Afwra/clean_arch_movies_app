class ApiConstants{
  static const String baseUrl = 'https://api.themoviedb.org/3';
  static const String apiKey = '1232c9666905fa56df2a04ec8cf24e6b';

  static const String nowPlayingPath = '$baseUrl/movie/now_playing?api_key=$apiKey';
  static const String popularMoviesPath = '$baseUrl/movie/popular?api_key=$apiKey';
  static const String topRatedMoviesPath = '$baseUrl/movie/top_rated?api_key=$apiKey';
}