import 'package:dio/dio.dart';
import 'package:yazan_movie_db_task/core/enums/enums.dart';

import '../exceptions/exceptions.dart';
import '../failures/failures.dart';

extension ExceptionToFailure on Exception {
  Failure toFailure() {
    final temp = this;
    if (temp is ExceptionBase) {
      return Failure(
        errorCode: temp.code.extractCode,
        userMessage: temp.message,
      );
    } else if (temp is DioException) {
      return Failure(
          userMessage: temp.message ?? ExceptionCode.HTTP.extractMessage,
          errorCode: ExceptionCode.HTTP.extractCode);
    } else {
      return Failure(
          userMessage: 'unknown', errorCode: ExceptionCode.UNKNOWN.extractCode);
    }
  }
}

extension ExceptionCodeEx on ExceptionCode {
  int get extractCode {
    switch (this) {
      case ExceptionCode.WRONG_EMAIL_PASSWORD:
        return 8;
      case ExceptionCode.CANCELED_BY_USER:
        return 7;
      case ExceptionCode.FIREBASE:
        return 6;
      case ExceptionCode.NO_INTERNET:
        return 5;
      case ExceptionCode.OTPNOTCOMPLETED:
        return 4;
      case ExceptionCode.MISSING_MEDIA:
        return 3;
      case ExceptionCode.UNKNOWN:
        return 0;
      case ExceptionCode.CASH:
        return 1;
      case ExceptionCode.HTTP:
        return 2;
      default:
        return 0;
    }
  }

  String get extractMessage {
    switch (this) {
      case ExceptionCode.WRONG_DATA:
        return "The data is missing or have some problem.";
      case ExceptionCode.MAPPING:
        return "Error in converting data";
      case ExceptionCode.HTTP:
        return "Failed in sending request.. please try again later.";
      case ExceptionCode.NO_INTERNET:
        return "No internet connection";
      case ExceptionCode.UNKNOWN:
      default:
        return "Unknown";
    }
  }
}
