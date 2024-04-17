// ignore_for_file: deprecated_member_use

import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:yuktidea_task_app/utils/apis.dart';

import '../models/termsandconditions_model.dart';

class TermsAndConditionsService {
  final Dio dio = Dio();

  // Constructor to configure Dio to ignore SSL verification
  TermsAndConditionsService() {
    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };
  }

  Future<dynamic> fetchTermsAndConditions() async {
    try {
      final response = await dio.get("$baseUrl$termsConditionEndPoint");
      log("Status Code : ${response.statusCode}");
      if (response.statusCode == 200) {
        return TermsAndConditionsModel.fromJson(response.data);
      } else {
        throw Exception("Failed to fetch terms and conditions");
      }
    } catch (e) {
      log("Error: $e");
    }
  }
}
