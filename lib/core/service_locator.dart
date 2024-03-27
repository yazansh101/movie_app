import 'package:get_it/get_it.dart';
import 'package:yazan_movie_db_task/core/network/api/api.dart';
import 'package:yazan_movie_db_task/features/top_rated_movies/data/datasources/remote/remote_data_source.dart';
import 'package:yazan_movie_db_task/features/top_rated_movies/data/repositories/top_movie_rated_reposotory_impl.dart';

import '../features/top_rated_movies/domain/repositories/top_rated_movies_repo.dart';
import '../features/top_rated_movies/domain/usecases/get_movies_use_case.dart';
import '../features/top_rated_movies/presentation/bloc/top_rated_movies_bloc.dart';

final GetIt instance = GetIt.instance;

void initialize() {
  ///utils
  instance.registerSingleton<Api>(ApiImpl());

  ///Data Source
  //topRatedMovies
  instance.registerSingleton<TopMovieRatedRemoteDataSource>(
      TopMovieRatedRemoteDataSourceImpl());

  ///Repository
  //topRatedMovies
  instance.registerLazySingleton<TopRatedMoviesRepository>(() =>
      TopRatedMoviesRepositoryImpl(
          remoteDataSource: instance<TopMovieRatedRemoteDataSource>()));

  ///UseCases
  // topRatedMovies
  instance.registerLazySingleton<GetTopRatedMoviesUseCase>(
      () => GetTopRatedMoviesUseCase(instance<TopRatedMoviesRepository>()));

  ///Blocs
  //topRatedMovies
  instance.registerSingleton<TopRatedMoviesBloc>(TopRatedMoviesBloc(instance<GetTopRatedMoviesUseCase>()));
}
