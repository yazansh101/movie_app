import 'package:flutter/material.dart';
import 'package:yazan_movie_db_task/core/extenstions/num_extension.dart';
import 'package:yazan_movie_db_task/core/network/api/api_parameters.dart';
import 'package:yazan_movie_db_task/features/top_rated_movies/domain/entities/top_rated_movie.dart';

class MovieDetailsPage extends StatelessWidget {
  final MovieEntity movie;
  const MovieDetailsPage({
    super.key,
    required this.movie,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(movie.title),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              height: 60.h,
              width: double.infinity,
              ApiURL.storageURL + movie.posterPath,
              fit: BoxFit.cover,
            ),
            Text(movie.overview),
          ],
        ));
  }
}
