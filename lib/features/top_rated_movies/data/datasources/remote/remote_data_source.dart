// ignore_for_file: unnecessary_cast

import 'package:yazan_movie_db_task/core/base/manager_base.dart';
import 'package:yazan_movie_db_task/core/exceptions/exceptions.dart';
import 'package:yazan_movie_db_task/core/extenstions/exception_extension.dart';
import 'package:yazan_movie_db_task/core/network/api/api_parameters.dart';
import 'package:yazan_movie_db_task/features/top_rated_movies/domain/entities/movie_db_api_response.dart';

import '../../../../../core/enums/enums.dart';
import '../../../../../core/network/api/api.dart';
import '../../models/movie_db_response_model.dart';

const userToken =
    'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIyMDU4YjI1ZGM1ZjUyY2JmNGQ5OWVlMGJiMzY5ZjgyNSIsInN1YiI6IjY0YWJjOTA0ZTI0YjkzMDEzYWJhMTJiOCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.pMG41fxYE-NhDBwY04OtQ3lcB70ReR5yU7gJtrwzM3w';

abstract class TopMovieRatedRemoteDataSource {
  Future<MoveiDbResponseEntity> getTopRatedMovies({
    required int page,
  });
}

class TopMovieRatedRemoteDataSourceImpl
    implements TopMovieRatedRemoteDataSource {
  @override
  Future<MoveiDbResponseEntity> getTopRatedMovies({required int page}) async {
    final request = ApiRequest(
      url: ApiURL.topMovieRated,
      headers: ApiParameters.authHeaders(userToken),
      params: ApiParameters.topMovieRatedParameters(page),
    );
    final response = await Manager.api.get(request);
    if (response.success) {
      final result = Manager.mapper.mapFromJson<MovieDbResponseModel>(
          response.body as Map<String, dynamic>,
          (json) =>
              MovieDbResponseModel.fromJson(json as Map<String, dynamic>));
      return result;
    } else {
      throw ApiRequestException(
        message: ExceptionCode.UNKNOWN.extractMessage,
        code: ExceptionCode.UNKNOWN,
      );
    }
  }
}
