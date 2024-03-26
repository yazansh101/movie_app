






import 'package:yazan_movie_db_task/core/base/model.dart';
import 'package:yazan_movie_db_task/core/enums/enums.dart';
import 'package:yazan_movie_db_task/core/exceptions/exceptions.dart';
import 'package:yazan_movie_db_task/core/extenstions/exception_extension.dart';
import 'package:yazan_movie_db_task/core/extenstions/string_extension.dart';


abstract class _Mapper{
  List<T> mapFromList<T extends Model>(List jsonList,T Function(Map json) toModel);
  T mapFromJson<T extends Model>(Map<String, dynamic> json,T Function(Map json) toModel);
}


class Mapper extends _Mapper{
  @override
  T mapFromJson<T extends Model>(Map<String, dynamic> json,
      T Function(Map<String, dynamic> json) toModel) {
    try {
      Map<String, dynamic> convertedJson = json;
      return toModel(convertedJson);
    } catch (e) {
      throw MappingToModelException(
          message: ExceptionCode.MAPPING.extractMessage,
          code: ExceptionCode.MAPPING);
    }
  }



  @override
  List<T> mapFromList<T extends Model>(List<dynamic> jsonList,T Function(Map json) toModel) {
    List<T> res = [];
    for (Map json in jsonList) {
      final convertingModel = toModel(json);
      res.add(convertingModel);
    }
    return res;
  }

  static bool objectToBool(dynamic value) {
   if(value is bool){
     return value;
   } else {
     return false;
   }
  }

  static String objectToString(dynamic s)=>s.toString().toStringValidate;
  static int objectToInt(dynamic s)=>s.toString().toInt;
  static double objectToDouble(dynamic s)=>s.toString().toDouble;
}