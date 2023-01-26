import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class LocalizedMessage {
  String getLocalizedMessage(BuildContext context);
}

abstract class Failure extends Equatable implements LocalizedMessage {
  const Failure();

  @override
  List<Object> get props => [];
}

class ServerFailure extends Failure {
  final int? statusCode;

  const ServerFailure(this.statusCode) : super();

  @override
  List<Object> get props => [statusCode ?? 0];

  @override
  String getLocalizedMessage(BuildContext context) =>
      'Server error $statusCode';
}

class ConnectionFailure extends Failure {
  const ConnectionFailure() : super();

  @override
  String getLocalizedMessage(BuildContext context) =>
      'Check internet connection';
}

class UnknownFailure extends Failure {
  const UnknownFailure() : super();

  @override
  String getLocalizedMessage(BuildContext context) => 'Unknown failure';
}

class PassportValidationFailure extends Failure {
  const PassportValidationFailure() : super();

  @override
  String getLocalizedMessage(BuildContext context) => 'Invalid driver passport';
}

class InputDataWrongFailure extends Failure {
  const InputDataWrongFailure() : super();

  @override
  String getLocalizedMessage(BuildContext context) => 'You entered wrong data!';
}

class UserExistFailure extends Failure {
  const UserExistFailure() : super();

  @override
  String getLocalizedMessage(BuildContext context) =>
      'User already exists with this email';
}

class EmptyFieldFailure extends Failure {
  const EmptyFieldFailure() : super();

  @override
  String getLocalizedMessage(BuildContext context) =>
      'Fields should not be empty';
}

class UnAuthorizationFailure extends Failure {
  const UnAuthorizationFailure() : super();

  @override
  String getLocalizedMessage(BuildContext context) => 'UnAuthorization failure';
}

class WrongCodeFailure extends Failure {
  const WrongCodeFailure() : super();

  @override
  String getLocalizedMessage(BuildContext context) => 'Wrong code';
}

class CacheFailure extends Failure {
  const CacheFailure() : super();

  @override
  String getLocalizedMessage(BuildContext context) => 'Cache failure';
}
