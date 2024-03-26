// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:dartz/dartz.dart';
import 'package:yazan_movie_db_task/core/extenstions/exception_extension.dart';
import 'package:yazan_movie_db_task/core/failures/failures.dart';
import 'package:yazan_movie_db_task/features/top_rated_movies/domain/entities/movie_db_api_response.dart';
import 'package:yazan_movie_db_task/features/top_rated_movies/domain/repositories/top_rated_movies_repo.dart';

import '../../../../core/enums/enums.dart';
import '../../../../core/exceptions/exceptions.dart';
import '../datasources/remote/remote_data_source.dart';

class TopRatedMoviesRepositoryImpl implements TopRatedMoviesRepository {
  final TopMovieRatedRemoteDataSource remoteDataSource;
  TopRatedMoviesRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, MoveiDbResponseEntity>> getTopRatedMovies(
      int page) async {
    try {
      final result = await remoteDataSource.getTopRatedMovies(page: page);
      return Right(result);
    } on Exception catch (e) {
      return Left(e.toFailure());
    } catch (e) {
      return Left(
        ApiRequestException(
                code: ExceptionCode.HTTP,
                message: ExceptionCode.HTTP.extractMessage)
            .toFailure(),
      );
    }
  }
}
