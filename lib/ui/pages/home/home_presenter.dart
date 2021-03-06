import './home.dart';

import 'package:flutter/material.dart';

abstract class HomePresenter implements Listenable {
  Stream<bool> get isLoadingStream;
  Stream<bool> get isSessionExpiredStream;
  Stream<String?> get navigateToStream;

  Future<void> loadData();
  void goToSurveyResult(String surveyId);
  void goToLogout();
}
