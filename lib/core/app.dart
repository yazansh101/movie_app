import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../features/top_rated_movies/presentation/bloc/top_rated_movies_bloc.dart';
import '../features/top_rated_movies/presentation/pages/top_rated_movies_page.dart';
import 'service_locator.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: BlocProvider(
            create: (context) => instance<TopRatedMoviesBloc>()
              ..add(const GetTopRatedMoviesEvent.getTopRatedMoviesEventwith(1)),
            child: const MovieTopRatedPage()));
  }
}
