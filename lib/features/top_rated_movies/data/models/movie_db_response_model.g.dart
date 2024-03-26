// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_db_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieDbResponseModel _$MovieDbResponseModelFromJson(
        Map<String, dynamic> json) =>
    MovieDbResponseModel(
      page: Mapper.objectToInt(json['page']),
      totalPages: Mapper.objectToInt(json['total_pages']),
      totalResults: json['totalResults'] as int,
      movies: (json['results'] as List<dynamic>?)
              ?.map((e) => const ConvertFromJsonToMovie()
                  .fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$MovieDbResponseModelToJson(
        MovieDbResponseModel instance) =>
    <String, dynamic>{
      'page': instance.page,
      'totalResults': instance.totalResults,
      'total_pages': instance.totalPages,
      'results':
          instance.movies.map(const ConvertFromJsonToMovie().toJson).toList(),
    };
