import 'package:e_polis/src/core/error/error.dart';
import 'package:e_polis/src/core/utils/utils.dart';
import 'package:e_polis/src/data/models/book/book_model.dart';
import 'package:e_polis/src/domain/usecases/main/book.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_state.dart';

part 'book_cubit.freezed.dart';

class BookCubit extends Cubit<BookState> {
  BookCubit(this._bookInsuranceUseCase) : super(const BookState());
  final BookInsuranceUseCase _bookInsuranceUseCase;

  void bookInsurance(String id) async {
    emit(state.copyWith(status: StateStatus.loading));
    var result = await _bookInsuranceUseCase.call(BookParams(id, BookModel()));
    result.fold(
        (failure) =>
            emit(state.copyWith(failure: failure, status: StateStatus.error)),
        (response) => emit(
            state.copyWith(status: StateStatus.success, bookModel: response)));
  }
}
