
part of 'top_rated_movies_bloc.dart';

@freezed
class TopRatedMoviesState with _$TopRatedMoviesState {
  const factory TopRatedMoviesState({
    @Default(false) bool loading,
    @Default(false) bool success,
    @Default(0) int currentPage,
    Failure? faliure,
    List<MovieEntity>? movies,
  }) = _TopRatedMoviesState;
}
