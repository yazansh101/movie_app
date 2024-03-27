import 'package:flutter/material.dart';
import 'package:yazan_movie_db_task/core/extenstions/num_extension.dart';

import '../../../../core/network/api/api_parameters.dart';
import '../../domain/entities/top_rated_movie.dart';
import '../pages/movie_details_page.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({
    super.key,
    required this.movie,
  });

  final MovieEntity movie;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => _pushToDetailsPage(context),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  ApiURL.storageURL+movie.posterPath,
                  fit: BoxFit.fill,
                  width: 30.w,
                  height: 20.h,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  movie.title,
                ),
                Text(movie.releaseDate),
                Text(movie.popularity.toString()),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _pushToDetailsPage(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MovieDetailsPage(
            movie: movie,
          ),
        ));
  }
}
