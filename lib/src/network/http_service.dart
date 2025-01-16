import 'package:along/src/config/config.dart';
import 'package:along/src/network/api_response.dart';
import 'package:along/src/utils/extentions/on_int.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'http_service.g.dart';

enum HttpMethod { get, post, put, patch, delete }

@riverpod
class HttpService extends _$HttpService {
  @override
  void build() {}

  final Dio _dio = Dio(BaseOptions(
    baseUrl: Config.baseUrl,
    connectTimeout: 60.seconds,
    receiveTimeout: 70.seconds,
  ))
    ..interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90,
      ),
    );

  void _setHeaders({bool formdata = false, bool formEncoded = false}) {
    final Map<String, dynamic> header = {
      'content-type': formdata
          ? 'multipart/form-data'
          : formEncoded
              ? 'application/x-www-form-urlencoded'
              : 'application/json',
      'Accept': formdata
          ? 'multipart/form-data'
          : formEncoded
              ? 'application/x-www-form-urlencoded'
              : 'application/json',
    };
    // var user = ref.watch(userDbNotifierProvider);
    // var auth = ref.watch(authNotifierProvider);

    // if (user != null && auth.user != null) {
    //   header['Authorization'] = 'Bearer ${user.accessToken}';
    // }

    _dio.options.headers.addAll(header);
  }

  dispose() {
    _dio.interceptors.clear();
    _dio.close();
  }

  disposeHeader() {
    _dio.options.headers.clear();
  }

  Future<ApiResponse> networkCall({
    required HttpMethod method,
    required String endpoint,
    Map<String, dynamic>? reqBody,
    FormData? formData,
    bool useformData = false,
    bool formEncoded = false,
  }) async {
    try {
      _setHeaders(
        formdata: useformData,
        formEncoded: formEncoded,
      );
      final res = await switch (method) {
        HttpMethod.get => _dio.get(
            endpoint,
          ),
        HttpMethod.post => _dio.post(
            endpoint,
            data: useformData ? formData : reqBody,
          ),
        HttpMethod.put => _dio.put(
            endpoint,
            data: useformData ? formData : reqBody,
          ),
        HttpMethod.patch => _dio.patch(
            endpoint,
            data: useformData ? formData : reqBody,
          ),
        HttpMethod.delete => _dio.delete(
            endpoint,
          ),
      };

      final ApiResponse response = ApiResponse(res);

      return response;
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout) {
        return ApiResponse(
          Response(
              statusCode: e.response?.statusCode,
              data: {
                "status": false,
                "response": "Request Timeout",
              },
              requestOptions: RequestOptions(path: '')),
        );
      } else if (e.type == DioExceptionType.unknown) {
        return ApiResponse(
          Response(
              statusCode: e.response?.statusCode,
              data: {
                "response": "Network is unreachable",
              },
              requestOptions: RequestOptions(path: '')),
        );
      } else if (e.type == DioExceptionType.badResponse) {
        return ApiResponse(e.response ??
            Response(
                statusCode: e.response?.statusCode,
                data: {
                  "response": "An error occurred bad response",
                },
                requestOptions: RequestOptions(path: '')));
      } else {
        return ApiResponse(
          Response(
            statusCode: e.response?.statusCode,
            data: {
              "error": "An error occurred",
              "response": e.message,
              "message": (e.response != null && e.response?.data != null)
                  ? e.response?.data["message"] != null
                      ? "${e.response?.data["message"]}"
                      : ""
                  : "",
              "errors": e.response?.data["errors"],
              "data": e.response?.data
            },
            requestOptions: RequestOptions(path: ''),
          ),
        );
      }
    }
  }
}
