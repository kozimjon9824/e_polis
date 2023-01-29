part of 'book_cubit.dart';

@freezed
class BookState with _$BookState {
  const factory BookState(
      {@Default(StateStatus.unknown) StateStatus status,
      @Default(UnknownFailure()) Failure failure,
      BookModel? responseModel,
      @Default(BookModel()) BookModel requestModel}) = _BookState;
}
