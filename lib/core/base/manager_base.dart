import 'package:yazan_movie_db_task/core/service_locator.dart' as di;

import '../mapper/mapper.dart';
import '../network/api/api.dart';

class Manager {
  static Api api = di.instance();
  static Mapper mapper = Mapper();
}
