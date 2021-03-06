import 'package:fordev/infra/cache/cache.dart';

import '../../domain/helpers/helpers.dart';
import '../../domain/usecases/usecases.dart';
import '../../ui/helpers/helpers.dart';
import '../../ui/pages/pages.dart';
import '../mixins/mixins.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../data/cache/cache.dart';

class GetxHomePresenter extends GetxController
    with SessionManager, LoadingManager, NavigationManager
    implements HomePresenter {
  final LoadHome loadHome;
  final _surveys = Rx<List<SurveyViewModel>>([]);

  Stream<List<SurveyViewModel>> get surveysStream => _surveys.stream;

  GetxHomePresenter({required this.loadHome});

  Future<void> loadData() async {
    try {
      isLoading = true;
      final surveys = await loadHome.load();
      print(surveys);
      _surveys.value = surveys
          .map((survey) => SurveyViewModel(
                id: survey.id,
                name: survey.name,
                lat: survey.lat,
                long: survey.long,
                address: survey.address,
                neighbor: survey.neighbor,
                number: survey.number,
                city: survey.city,
              ))
          .toList();
    } on DomainError catch (error) {
      if (error == DomainError.accessDenied) {
        isSessionExpired = true;
      } else {
        _surveys.subject.addError(UIError.unexpected.description);
      }
    } finally {
      isLoading = false;
    }
  }

  void goToSurveyResult(String surveyId) {
    navigateTo = '/survey_result/$surveyId';
  }

  void goToLogout() {
    //LocalStorageAdapter cacheStorage
    Get.offAllNamed('/login');
  }
}
