import '../entities/entities.dart';

abstract class LoadHome {
  Future<List<SurveyEntity>> load();
}
