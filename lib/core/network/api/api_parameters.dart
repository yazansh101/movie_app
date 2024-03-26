import 'package:dio/dio.dart';

class ApiURL {
  static const String baseURL = "https://api.themoviedb.org/3/movie";
  static const String topMovieRated = "$baseURL/top_rated";
}

class ApiParameters {
  static Map<String, dynamic> topMovieRatedParameters(int page) =>
      {"page": page, "language": "en-US"};

  static Map<String, String> authHeaders(String userToken) => {
        "Accept": Headers.jsonContentType,
        'Authorization': 'Bearer $userToken',
      };
}
