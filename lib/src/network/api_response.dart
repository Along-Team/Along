import 'package:along/src/utils/extentions/on_string.dart';
import 'package:dio/dio.dart';

class ApiResponse {
  final Response response;
  ApiResponse(this.response);

  dynamic get data => response.data;

  int? get statusCode {
    return response.statusCode;
  }

  //Todo: know if it is a sucessful transaction or not
  bool get isSuccessful {
    return statusCode != null && statusCode! >= 200 && statusCode! < 300;
  }

  String? get errorMessage {
    if (isSuccessful == false) {
      return formatErrorResponse(response.data as Map<String, dynamic>);
    } else {
      return null;
    }
  }

  ///
  ///200 - OK	Everything worked as expected.
// 400 - Bad Request	The request was unacceptable, often due to missing a required parameter.
// 401 - Unauthorized	Access token wasn't parse
// 404 - Not Found	The requested resource doesn't exist.
// 405 - Method Not Supported	HTTP method is not supported
// 500, 502, 503, 504 - Server Errors
  ///
}

String formatErrorResponse(Map<String, dynamic> errorJson) {
  // Extract the response map containing errors
  // final errorData = errorJson['status'];
  // if (errorData is String) {
  //   return errorData;
  // }
  String message = errorJson['message'] as String;
  // Map<String, dynamic>? errorMap =
  //     errorJson['response'] as Map<String, dynamic>?;

  // if (errorMap == null || errorMap.isEmpty) {
  //   return 'An error occurred';
  // }

  // // Build formatted error messages
  // StringBuffer formattedError = StringBuffer();

  // errorMap.forEach((key, errors) {
  //   // Handle if errors is a string or a list of strings
  //   if (errors is List) {
  //     // Join multiple error messages for the same field
  //     String errorMessages = errors.join('\n• ');
  //     formattedError.writeln('${key.toCapitalCase()}:\n• $errorMessages');
  //   } else {
  //     formattedError.writeln('${key.toCapitalCase()}:\n• $errors');
  //   }
  // });

  // return formattedError.toString().trim();
  return message;
}
