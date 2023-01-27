import 'package:dartz/dartz.dart';
import 'package:e_polis/src/core/error/error.dart';
import 'package:e_polis/src/core/usecase/usecase.dart';
import 'package:e_polis/src/data/models/book/book_model.dart';
import 'package:e_polis/src/domain/repository/main.dart';

class BookInsuranceUseCase extends UseCase<BookModel, BookParams> {
  final IMainRepository _mainRepository;

  BookInsuranceUseCase(this._mainRepository);

  @override
  Future<Either<Failure, BookModel>> call(BookParams params) =>
      _mainRepository.bookInsurance(params.id, params.request);
}

class BookParams {
  final String id;
  final BookModel request;

  BookParams(this.id, this.request);
}
