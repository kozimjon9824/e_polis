import 'dart:async';
import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../injector.dart';
import '../../data/models/refresh_token/refresh_token.dart';
import '../../presentation/cubits/auth/auth_cubit.dart';
import '../constants/constants.dart';
import '../routes/app_routes.dart';
import '../utils/utils.dart';
import 'retry.dart';

class NetworkClient {
  String _token = '';
  String _lang = '';
  late final Dio api;

  Future<Dio> init(SharedPreferences preferences) async {
    api = Dio();
    // api.interceptors.add(alice.getDioInterceptor());
    api.interceptors.add(InterceptorsWrapper(
      /// onRequest
      onRequest: (options, handler) async {
        _token = preferences.getString(ACCESS_TOKEN) ?? '';
        _lang = preferences.getString(APP_LANGUAGE) ?? RU;
        debugPrint(_token);
        if (_token != '') {
          options.headers['Authorization'] = 'Bearer $_token';
          options.headers['Accept-Language'] = _lang;
        }
        return handler.next(options);
      },
      onResponse: (response, handler) {
        return handler.next(response);
      },

      /// onError
      onError: (error, handler) async {
        if (_shouldRetry(error)) {
          try {
            // Navigator.pushNamed(
            //     navigatorKey.currentContext!, AppRoutes.nooInternet);
            DioConnectivityRequestRetrier(
                    dio: api, connectivity: Connectivity())
                .scheduleRequestRetry(error.requestOptions);
          } catch (er) {
            return handler.next(error);
          }
        }

        if (error.response?.statusCode == 401 && _token != '') {
          await refreshToken(preferences);
          if (_token == '') {
            return;
          }
          RequestOptions requestOptions = error.requestOptions;
          final options = Options(
            method: requestOptions.method,
            headers: {
              'Authorization': 'Bearer $_token',
              'Accept-Language': _lang
            },
          );
          late Response cloneReq;
          try {
            String url = requestOptions.path.contains(BASE_URL)
                ? requestOptions.path
                : '$BASE_URL${requestOptions.path}';
            cloneReq = await api.request(url,
                data: requestOptions.data,
                queryParameters: requestOptions.queryParameters,
                options: options);
            debugPrint('PATHHH : ${cloneReq.realUri.path} KKK$cloneReq');
          } catch (e) {
            debugPrint('EE:$e');
          }
          return handler.resolve(cloneReq);
        }
        return handler.next(error);
      },
    ));
    api.interceptors.add(LogInterceptor(
        requestBody: true,
        responseBody: true,
        requestHeader: true,
        request: true));
    return api;
  }

  Future<void> refreshToken(SharedPreferences preferences) async {
    String refreshToken = preferences.getString(REFRESH_TOKEN) ?? '';
    if (refreshToken == '') {
      await _goToLoginScreen();
      return;
    }
    try {
      debugPrint('AA: $refreshToken');
      final options = Options(headers: {"Content-Type": "application/json"});
      final response = await Dio(BaseOptions(baseUrl: BASE_URL)).post(
          'auth/refresh-token',
          data: {'refreshToken': refreshToken},
          options: options);
      if (response.statusCode == 201 || response.statusCode == 200) {
        RefreshToken token = RefreshToken.fromJson(response.data);
        debugPrint('TTTTT: ${token.accessToken}');
        _token = token.accessToken ?? '';
        await Future.wait([
          preferences.setString(ACCESS_TOKEN, token.accessToken ?? ''),
          preferences.setString(REFRESH_TOKEN, token.refreshToken ?? '')
        ]);
      }
      if (response.statusCode == 401) {
        _token = '';
        await preferences.setString(REFRESH_TOKEN, '');
        await _goToLoginScreen();
        debugPrint('TTT401 : ${response.data} ${response.statusMessage}');
      }
    } catch (err) {
      _token = '';
      debugPrint('EEE:$err');
      await preferences.setString(REFRESH_TOKEN, '');
      await _goToLoginScreen();
    }
  }

  bool _shouldRetry(DioError err) {
    return err.type == DioErrorType.other &&
        err.error != null &&
        err.error is SocketException;
  }

  Future<void> _goToLoginScreen() async {
    await inject<AuthCubit>().logout();

    /// Navigate to Sign in Screen
    Navigator.pushNamedAndRemoveUntil(
        navigatorKey.currentContext!, AppRoutes.splash, (route) => false);
  }
}
