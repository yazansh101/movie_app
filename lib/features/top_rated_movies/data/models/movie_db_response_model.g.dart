// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_db_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieDbResponseModel _$MovieDbResponseModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'MovieDbResponseModel',
      json,
      ($checkedConvert) {
        final val = MovieDbResponseModel(
          page: $checkedConvert('page', (v) => Mapper.objectToInt(v)),
          totalPages:
              $checkedConvert('total_pages', (v) => Mapper.objectToInt(v)),
          totalResults: $checkedConvert('total_results', (v) => v as int?),
          movies: $checkedConvert(
              'results',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) => const ConvertFromJsonToMovie()
                          .fromJson(e as Map<String, dynamic>))
                      .toList() ??
                  []),
        );
        return val;
      },
      fieldKeyMap: const {
        'page' : 'page',
        'totalPages': 'total_pages',
        'totalResults': 'total_results',
        'movies': 'results'
      },
    );

Map<String, dynamic> _$MovieDbResponseModelToJson(
        MovieDbResponseModel instance) =>
    <String, dynamic>{
      'page': instance.page,
      'total_results': instance.totalResults,
      'total_pages': instance.totalPages,
      'results':
          instance.movies.map(const ConvertFromJsonToMovie().toJson).toList(),
    };
