import 'package:equatable/equatable.dart';

abstract class ServerException extends Equatable implements Exception {
  const ServerException({required this.message, required this.statusCode});

  final String message;
  final String statusCode;

  @override
  List<dynamic> get props => [message,statusCode];
}

abstract class CacheException extends Equatable implements Exception {
  const CacheException({required this.message, required this.statusCode});

  final String message;
  final String statusCode;

  @override
  List<dynamic> get props => [message,statusCode];
}
