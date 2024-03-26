// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_rated_movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieModel _$MovieModelFromJson(Map<String, dynamic> json) => MovieModel(
      adult: Mapper.objectToBool(json['adult']),
      backdropPath: Mapper.objectToString(json['backdropPath']),
      genreIds:
          (json['genreIds'] as List<dynamic>?)?.map((e) => e as int).toList() ??
              [],
      id: Mapper.objectToInt(json['id']),
      originalLanguage: Mapper.objectToString(json['originalLanguage']),
      originalTitle: Mapper.objectToString(json['originalTitle']),
      overview: Mapper.objectToString(json['overview']),
      popularity: Mapper.objectToDouble(json['popularity']),
      posterPath: Mapper.objectToString(json['posterPath']),
      releaseDate: Mapper.objectToString(json['releaseDate']),
      title: Mapper.objectToString(json['title']),
      video: Mapper.objectToBool(json['video']),
      voteAverage: Mapper.objectToDouble(json['voteAverage']),
      voteCount: Mapper.objectToInt(json['voteCount']),
    );

Map<String, dynamic> _$MovieModelToJson(MovieModel instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdropPath': instance.backdropPath,
      'genreIds': instance.genreIds,
      'id': instance.id,
      'originalLanguage': instance.originalLanguage,
      'originalTitle': instance.originalTitle,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'posterPath': instance.posterPath,
      'releaseDate': instance.releaseDate,
      'title': instance.title,
      'video': instance.video,
      'voteAverage': instance.voteAverage,
      'voteCount': instance.voteCount,
    };
