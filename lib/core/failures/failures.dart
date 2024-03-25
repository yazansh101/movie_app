import 'package:equatable/equatable.dart';

class Failure extends Equatable {

  final String userMessage;
  final int errorCode;

  const Failure({
    required this.userMessage,
    required this.errorCode,
  });

  @override
  List<Object> get props => [userMessage,errorCode];
}
