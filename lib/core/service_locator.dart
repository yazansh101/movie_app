import 'package:get_it/get_it.dart';
import 'package:yazan_movie_db_task/core/network/api/api.dart';

final GetIt instance = GetIt.instance;

void initialize() {
  ///utils
  instance.registerSingleton<Api>(ApiImpl());
}
