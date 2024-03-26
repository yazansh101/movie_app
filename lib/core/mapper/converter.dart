import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yazan_movie_db_task/features/top_rated_movies/data/models/top_rated_movie_model.dart';
import 'package:yazan_movie_db_task/features/top_rated_movies/domain/entities/top_rated_movie.dart';



class ConvertFromJsonToMovie
    extends JsonConverter<MovieEntity, Map<String, dynamic>> {
  @override
  MovieEntity fromJson(Map<String, dynamic> json) =>
      MovieModel.fromJson(json);

  @override
  Map<String, dynamic> toJson(MovieEntity object) =>
      (object as MovieModel).toJson();

  const ConvertFromJsonToMovie();
}

