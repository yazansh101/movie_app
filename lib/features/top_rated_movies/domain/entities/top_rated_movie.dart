import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yazan_movie_db_task/core/mapper/mapper.dart';

class MovieEntity extends Equatable {
  @JsonKey(name: MoveiKey.adult, fromJson: Mapper.objectToBool)
  final bool adult;
  @JsonKey(name: MoveiKey.backdropPath, fromJson: Mapper.objectToString)
  final String backdropPath;
  @JsonKey(name: MoveiKey.genreIds, defaultValue: [])
  final List<int> genreIds;
  @JsonKey(name: MoveiKey.id, fromJson: Mapper.objectToInt)
  final int id;
  @JsonKey(name: MoveiKey.originalLanguage, fromJson: Mapper.objectToString)
  final String originalLanguage;
  @JsonKey(name: MoveiKey.originalTitle, fromJson: Mapper.objectToString)
  final String originalTitle;
  @JsonKey(name: MoveiKey.overview, fromJson: Mapper.objectToString)
  final String overview;
  @JsonKey(name: MoveiKey.popularity, fromJson: Mapper.objectToDouble)
  final double popularity;
  @JsonKey(name: MoveiKey.posterPath, fromJson: Mapper.objectToString)
  final String posterPath;
  @JsonKey(name: MoveiKey.releaseDate, fromJson: Mapper.objectToString)
  final String releaseDate;
  @JsonKey(name: MoveiKey.title, fromJson: Mapper.objectToString)
  final String title;
  @JsonKey(name: MoveiKey.video, fromJson: Mapper.objectToBool)
  final bool video;
  @JsonKey(name: MoveiKey.voteAverage, fromJson: Mapper.objectToDouble)
  final double voteAverage;
  @JsonKey(name: MoveiKey.voteCount, fromJson: Mapper.objectToInt)
  final int voteCount;

  const MovieEntity({
    required this.adult,
    required this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  @override
  List<Object?> get props => [
        adult,
        backdropPath,
        genreIds,
        id,
        originalLanguage,
        originalTitle,
        overview,
        popularity,
        posterPath,
        releaseDate,
        title,
        video,
        voteAverage,
        voteCount,
      ];
}

class MoveiKey {
  static const String adult = "adult";
  static const String backdropPath = "backdropPath";
  static const String genreIds = "genreIds";
  static const String id = "id";
  static const String originalLanguage = "originalLanguage";
  static const String originalTitle = "originalTitle";
  static const String overview = "overview";
  static const String popularity = "popularity";
  static const String posterPath = "posterPath";
  static const String releaseDate = "releaseDate";
  static const String title = "title";
  static const String video = "video";
  static const String voteAverage = "voteAverage";
  static const String voteCount = "voteCount";
}
