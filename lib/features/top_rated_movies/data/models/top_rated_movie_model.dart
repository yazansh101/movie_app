import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yazan_movie_db_task/core/base/model.dart';
import 'package:yazan_movie_db_task/core/mapper/mapper.dart';
import 'package:yazan_movie_db_task/features/top_rated_movies/domain/entities/top_rated_movie.dart';

part 'top_rated_movie_model.g.dart';

@JsonSerializable()
class MovieModel extends MovieEntity implements Model {
  const MovieModel(
      {required super.adult,
      required super.backdropPath,
      required super.genreIds,
      required super.id,
      required super.originalLanguage,
      required super.originalTitle,
      required super.overview,
      required super.popularity,
      required super.posterPath,
      required super.releaseDate,
      required super.title,
      required super.video,
      required super.voteAverage,
      required super.voteCount});

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MovieModelToJson(this);

  @override
  Model fromJson(Map<String, dynamic> json) => _$MovieModelFromJson(json);
}
