import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  late final String message;

  @override
  List<Object?> get props => [message];
}

class InvalidFailure extends Failure {
  final String message =
      "Invalid Input - The number must be a positive integer or zero";

  @override
  List<Object?> get props => [message];
}

class CacheFailure extends Failure {
  final String message = "??? Cache Hatası ?? Ne yazmak mantıklı?";

  @override
  List<Object?> get props => [message];
}

class NullFailure extends Failure {
  final String message = "??? Null Hatası ?? Ne yazmak mantıklı?";

  @override
  List<Object?> get props => [message];
}
