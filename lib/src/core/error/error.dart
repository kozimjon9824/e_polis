import 'package:e_polis/generated/l10n.dart';
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
      '${AppLocalizations.of(context).serverError} $statusCode';
}

class ConnectionFailure extends Failure {
  const ConnectionFailure() : super();

  @override
  String getLocalizedMessage(BuildContext context) =>
      AppLocalizations.of(context).checkInternetConnection;
}

class UnknownFailure extends Failure {
  const UnknownFailure() : super();

  @override
  String getLocalizedMessage(BuildContext context) =>
      AppLocalizations.of(context).unknownFailure;
}

class PassportValidationFailure extends Failure {
  const PassportValidationFailure() : super();

  @override
  String getLocalizedMessage(BuildContext context) =>
      AppLocalizations.of(context).invalidDriverPassport;
}

class InputDataWrongFailure extends Failure {
  const InputDataWrongFailure() : super();

  @override
  String getLocalizedMessage(BuildContext context) =>
      AppLocalizations.of(context).enteredWrongData;
}

class NoLicenceFoundFailure extends Failure {
  const NoLicenceFoundFailure() : super();

  @override
  String getLocalizedMessage(BuildContext context) =>
      AppLocalizations.of(context).enteredWrongData;
}

class EmptyFieldFailure extends Failure {
  const EmptyFieldFailure() : super();

  @override
  String getLocalizedMessage(BuildContext context) =>
      AppLocalizations.of(context).mustNotEmptyFailure;
}

class UnAuthorizationFailure extends Failure {
  const UnAuthorizationFailure() : super();

  @override
  String getLocalizedMessage(BuildContext context) =>
      AppLocalizations.of(context).unAuthFailure;
}

class WrongCodeFailure extends Failure {
  const WrongCodeFailure() : super();

  @override
  String getLocalizedMessage(BuildContext context) =>
      AppLocalizations.of(context).WrongCode;
}

class CacheFailure extends Failure {
  const CacheFailure() : super();

  @override
  String getLocalizedMessage(BuildContext context) =>
      AppLocalizations.of(context).cacheError;
}
