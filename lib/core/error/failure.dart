import 'package:education_app_tdd/core/error/exceptions.dart';
import 'package:equatable/equatable.dart';


abstract class Failure extends Equatable{
  Failure({required this.message,required this.statusCode})
  :assert(
    statusCode is String || statusCode is int,
    'Status code cannot be ${statusCode.runtimeType}'
  );

  final String message;
  final dynamic statusCode;

  String get errorMessage => '$statusCode Error: $message';

  @override
  List<dynamic> get props => [statusCode,message];

}

class CachedFailure extends Failure{
  CachedFailure({required super.message,required super.statusCode});

}

class ServerFailure extends Failure{
  ServerFailure({required super.message,required super.statusCode});

  ServerFailure.fromException(ServerException exception)
  :this(message: exception.message, statusCode: exception.statusCode);

}
