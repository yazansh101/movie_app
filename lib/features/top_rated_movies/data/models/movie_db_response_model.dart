import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yazan_movie_db_task/core/base/model.dart';
import 'package:yazan_movie_db_task/core/mapper/converter.dart';
import 'package:yazan_movie_db_task/core/mapper/mapper.dart';
import 'package:yazan_movie_db_task/features/top_rated_movies/domain/entities/movie_db_api_response.dart';

part 'movie_db_response_model.g.dart';

@JsonSerializable(converters: [ConvertFromJsonToMovie()])
class MovieDbResponseModel extends MoveiDbResponseEntity implements Model {
  const MovieDbResponseModel(
      {required super.page,
      required super.totalPages,
      required super.totalResults,
      required super.movies});

  factory MovieDbResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MovieDbResponseModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MovieDbResponseModelToJson(this);

  @override
  Model fromJson(Map<String, dynamic> json) =>
      _$MovieDbResponseModelFromJson(json);
}
