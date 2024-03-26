import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yazan_movie_db_task/features/top_rated_movies/domain/entities/top_rated_movie.dart';

import '../../../../core/mapper/mapper.dart';

class MoveiDbResponseEntity extends Equatable {
  @JsonKey(name: MoveiDbResponseKey.page, fromJson: Mapper.objectToString)
  final int page;

  @JsonKey(name: MoveiDbResponseKey.totalResults)
  final int totalResults;
  @JsonKey(name: MoveiDbResponseKey.totalPages, fromJson: Mapper.objectToInt)
  final int totalPages;

  @JsonKey(name: MoveiDbResponseKey.movies, defaultValue: [])
  final List<MovieEntity> movies;

  const MoveiDbResponseEntity({
    required this.page,
    required this.totalPages,
    required this.totalResults,
    required this.movies,
  });

  @override
  List<Object> get props => [
        page,
        totalPages,
        totalResults,
        movies,
      ];
}

class MoveiDbResponseKey {
  static const String page = "page";
  static const String movies = "results";
  static const String totalPages = "total_pages";
  static const String totalResults = "totalResults";
}
