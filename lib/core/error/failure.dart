import 'package:education_app_tdd/core/error/exceptions.dart';
import 'package:equatable/equatable.dart';


abstract class Failure extends Equatable{
  const Failure({required this.message,required this.statusCode});

  final String message;
  final dynamic statusCode;

  String get errorMessage => '$statusCode Error: $message';

  @override
  List<dynamic> get props => [statusCode,message];

}

class CachedFailure extends Failure{
  const CachedFailure({required super.message,required super.statusCode});

}

class ServerFailure extends Failure{
  const ServerFailure({required super.message,required super.statusCode});

  ServerException.fromException(ServerException exception)
  :this(message: exception.message, statusCode: exception.statusCode);

}
