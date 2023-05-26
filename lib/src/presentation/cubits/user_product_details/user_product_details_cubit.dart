import 'dart:io';
import 'package:dio/dio.dart';
import 'package:e_polis/src/data/models/user_product/user_product.dart';
import 'package:e_polis/src/domain/usecases/product/get_product_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import '../../../core/error/error.dart';
import '../../../core/utils/utils.dart';

part 'user_product_details_state.dart';

part 'user_product_details_cubit.freezed.dart';

class UserProductDetailsCubit extends Cubit<UserProductDetailsState> {
  UserProductDetailsCubit(this._useCase)
      : super(const UserProductDetailsState());
  final UserProductDetailsUseCase _useCase;

  void loadData(String id) async {
    emit(state.copyWith(status: StateStatus.loading));
    var result = await _useCase.call(UserProductParams(id));
    result.fold(
      (failure) =>
          emit(state.copyWith(status: StateStatus.error, failure: failure)),
      (data) =>
          emit(state.copyWith(status: StateStatus.unknown, userProduct: data)),
    );
  }

  Future<void> downloadFile({required String url}) async {
    var file = File('');
    String filePath = '';
    if (Platform.isIOS) {
      final dir = await getApplicationDocumentsDirectory();
      // final Directory? downloadsDir = await getDownloadsDirectory();
      String fn = url.split('/').last;
      file = File('${dir.path}/$fn.pdf');
      filePath = dir.path;
    }
    if (Platform.isAndroid) {
      var status = await Permission.storage.status;
      if (status != PermissionStatus.granted) {
        status = await Permission.storage.request();
      }
      if (status.isGranted) {
        const downloadsFolderPath = '/storage/emulated/0/Download/';
        Directory dir = Directory(downloadsFolderPath);
        String fn = url.split('/').last;
        file = File('${dir.path}/$fn.pdf');
        filePath = dir.path;
      }
    }

    Dio dio = Dio();
    emit(state.copyWith(fileDownloading: true));
    await dio.download(
      url,
      file.path,
      onReceiveProgress: (count, total) {
        debugPrint('---Download----Rec: $count, Total: $total');
      },
    );
    emit(state.copyWith(fileDownloading: false, filePath: filePath));
  }
}
