import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yazan_movie_db_task/core/failures/failures.dart';
import 'package:yazan_movie_db_task/features/top_rated_movies/domain/entities/top_rated_movie.dart';

import '../../domain/usecases/get_movies_use_case.dart';

part 'top_rated_movies_bloc.freezed.dart';
part 'top_rated_movies_event.dart';
part 'top_rated_movies_state.dart';

class TopRatedMoviesBloc
    extends Bloc<GetTopRatedMoviesEvent, TopRatedMoviesState> {
  final GetTopRatedMoviesUseCase getTopRatedMoviesUseCase;
  TopRatedMoviesBloc(this.getTopRatedMoviesUseCase)
      : super(const TopRatedMoviesState()) {
    on<GetTopRatedMoviesEvent>((event, emit) async {
      switch (event) {
        case GetTopRatedMoviesEvent _:
          await getTopRatedMovies(event, emit);
      }
    });
  }

  getTopRatedMovies(
      GetTopRatedMoviesEvent event, Emitter<TopRatedMoviesState> emit) async {
    if (!isClosed) {
      emit(state.copyWith(loading: true, success: false));
    }
    final result = await getTopRatedMoviesUseCase(event.page);
    result.fold(
        (failure) => emit(
            state.copyWith(loading: false, success: false, faliure: failure)),
        (apiResponse) => emit(state.copyWith(
            loading: false,
            success: true,
            faliure: null,
            movies: apiResponse.movies,
            currentPage: apiResponse.page)));
  }
}
