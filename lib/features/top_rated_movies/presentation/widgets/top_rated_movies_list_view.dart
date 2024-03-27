import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yazan_movie_db_task/features/top_rated_movies/domain/entities/top_rated_movie.dart';
import 'package:yazan_movie_db_task/features/top_rated_movies/presentation/widgets/movie_card.dart';

import '../bloc/top_rated_movies_bloc.dart';

class TopRatedMoviesListView extends StatefulWidget {
  final List<MovieEntity> movies;
  const TopRatedMoviesListView({
    super.key,
    required this.movies,
  });

  @override
  State<TopRatedMoviesListView> createState() => _TopRatedMoviesListViewState();
}

class _TopRatedMoviesListViewState extends State<TopRatedMoviesListView> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    final possition = _scrollController.position;
    final currentPosition = possition.pixels;
    if (currentPosition >= 0.9 * possition.maxScrollExtent) {
      final topRatedMoviesBloc = BlocProvider.of<TopRatedMoviesBloc>(context);
      final isLoading = topRatedMoviesBloc.state.loading;
      if (!isLoading) {
        topRatedMoviesBloc.add(
            GetTopRatedMoviesEvent.getTopRatedMoviesEventwith(
                topRatedMoviesBloc.state.currentPage + 1));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final topRatedMoviesBloc = BlocProvider.of<TopRatedMoviesBloc>(context);
    final isLoading = topRatedMoviesBloc.state.loading;
    return Padding(
      padding: const EdgeInsetsDirectional.all(8),
      child: Column(
        children: [
          Expanded(
            child: ListView(
              controller: _scrollController,
              children: [
                ...buildCards(widget.movies),
                Offstage(
                    offstage: !isLoading,
                    child: const Center(
                        child: Padding(
                      padding: EdgeInsetsDirectional.all(8),
                      child: CircularProgressIndicator(),
                    )))
              ],
            ),
          ),
        ],
      ),
    );
  }

  buildCards(List<MovieEntity> movies) {
    List<Widget> cards = [];
    for (MovieEntity movie in movies) {
      cards.add(MovieCard(movie: movie));
    }
    return cards;
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }
}
