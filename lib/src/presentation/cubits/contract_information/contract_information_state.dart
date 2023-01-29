part of 'contract_information_cubit.dart';

@freezed
class ContractInformationState with _$ContractInformationState {
  const factory ContractInformationState(
      {@Default(StateStatus.unknown) StateStatus status,
      @Default(UnknownFailure()) Failure failure,
      ContractInfoResponse? contract}) = _ContractInformationState;
}
