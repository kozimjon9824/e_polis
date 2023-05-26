part of 'book_cubit.dart';

@freezed
class BookState with _$BookState {
  const factory BookState({
    @Default(StateStatus.unknown) StateStatus status,
    @Default(UnknownFailure()) Failure failure,
    ContractInfoResponse? contract,
    @Default(BookModel()) BookModel requestModel,
    String? paymentHolder,
    String? inn,
  }) = _BookState;
}
