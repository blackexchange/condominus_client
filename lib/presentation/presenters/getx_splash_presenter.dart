import '../../domain/usecases/usecases.dart';
import '../../ui/pages/pages.dart';
import '../mixins/mixins.dart';
import '../../helpers/helpers.dart';

import 'package:get/get.dart';

class GetxSplashPresenter extends GetxController
    with NavigationManager
    implements SplashPresenter {
  final LoadCurrentAccount loadCurrentAccount;

  GetxSplashPresenter({required this.loadCurrentAccount});

  Future<void> checkAccount({int durationInSeconds = 2}) async {
    await Future.delayed(Duration(seconds: durationInSeconds));
    try {
      await loadCurrentAccount.load();
      print("Carregando listas...");
      //  StartLists startLists;

      //  startLists = StartLists();
      // startLists.buildingList();

      navigateTo = '/surveys';
    } catch (error) {
      navigateTo = '/login';
    }
  }
}
