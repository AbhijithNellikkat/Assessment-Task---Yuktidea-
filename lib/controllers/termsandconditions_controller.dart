import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:yuktidea_task_app/models/termsandconditions_model.dart';
import 'package:yuktidea_task_app/services/termsandconditions_service.dart';

class TermsAndConditionsController extends ChangeNotifier {
  final TermsAndConditionsService termsAndConditionsService =
      TermsAndConditionsService();

  TermsAndConditionsModel? result;

  bool loading = false;

  fetchTermsAndConditions() async {
    try {
      loading = true;
      notifyListeners();

      result = await termsAndConditionsService.fetchTermsAndConditions();

      loading = false;
      notifyListeners();
    } catch (e) {
      loading = false;
      notifyListeners();
      log("$e");
    }
  }
}
