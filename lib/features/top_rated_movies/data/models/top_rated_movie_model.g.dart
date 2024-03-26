// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_rated_movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieModel _$MovieModelFromJson(Map<String, dynamic> json) => MovieModel(
      adult: Mapper.objectToBool(json['adult']),
      backdropPath: Mapper.objectToString(json['backdrop_path']),
      genreIds: (json['genre_ids'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
      id: Mapper.objectToInt(json['id']),
      originalLanguage: Mapper.objectToString(json['original_language']),
      originalTitle: Mapper.objectToString(json['original_title']),
      overview: Mapper.objectToString(json['overview']),
      popularity: Mapper.objectToDouble(json['popularity']),
      posterPath: Mapper.objectToString(json['poster_path']),
      releaseDate: Mapper.objectToString(json['release_date']),
      title: Mapper.objectToString(json['title']),
      video: Mapper.objectToBool(json['video']),
      voteAverage: Mapper.objectToDouble(json['vote_average']),
      voteCount: Mapper.objectToInt(json['vote_count']),
    );

Map<String, dynamic> _$MovieModelToJson(MovieModel instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdropPath,
      'genre_ids': instance.genreIds,
      'id': instance.id,
      'original_language': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      'title': instance.title,
      'video': instance.video,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
    };
