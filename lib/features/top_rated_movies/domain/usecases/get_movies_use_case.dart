import 'package:dartz/dartz.dart';
import 'package:yazan_movie_db_task/features/top_rated_movies/domain/repositories/top_rated_movies_repo.dart';

import '../../../../core/failures/failures.dart';
import '../entities/movie_db_api_response.dart';

class GetTopRatedMoviesUseCase {
  final TopRatedMoviesRepository repository;

  GetTopRatedMoviesUseCase(this.repository);

  Future<Either<Failure, MoveiDbResponseEntity>> call(int page) async =>
      await repository.getTopRatedMovies(page);
}
