import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yazan_movie_db_task/features/top_rated_movies/domain/entities/top_rated_movie.dart';

import '../bloc/top_rated_movies_bloc.dart';
import '../widgets/top_rated_movies_list_view.dart';

class MovieTopRatedPage extends StatefulWidget {
  const MovieTopRatedPage({super.key});

  @override
  State<MovieTopRatedPage> createState() => _MovieTopRatedPageState();
}

class _MovieTopRatedPageState extends State<MovieTopRatedPage> {
  List<MovieEntity> movies = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Top Rated Movies',),
        centerTitle: true,
      ),
      body: Center(
        child: BlocConsumer<TopRatedMoviesBloc, TopRatedMoviesState>(
          listener: (context, state) {
            if (state.success) {
              movies.addAll(state.movies ?? []);
            }
          },
          builder: (context, state) {
            // if this is the first time for loading data
            if (state.loading && state.currentPage == 0) {
              return const CircularProgressIndicator();
            } else {
              return TopRatedMoviesListView(movies: movies);
            }
          },
        ),
      ),
    );
  }
}
