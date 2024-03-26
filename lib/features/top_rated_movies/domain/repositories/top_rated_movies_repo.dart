import 'package:dartz/dartz.dart';
import 'package:yazan_movie_db_task/core/failures/failures.dart';
import 'package:yazan_movie_db_task/features/top_rated_movies/domain/entities/movie_db_api_response.dart';

abstract class TopRatedMoviesRepository {
  Future<Either<Failure, List<MoveiDbResponseEntity>>> getTopRatedMovies(int page);
}
