import '../../../domain/entities/entities.dart';
import '../../../domain/helpers/helpers.dart';
import '../../../domain/usecases/usecases.dart';
import '../../cache/cache.dart';
import '../../models/models.dart';

class LocalLoadHome implements LoadHome {
  final CacheStorage cacheStorage;

  LocalLoadHome({required this.cacheStorage});

  Future<List<SurveyEntity>> load() async {
    try {
      final data = await cacheStorage.fetch('home');
      if (data?.isEmpty != false) {
        throw Exception();
      }
      return _mapToEntity(data);
    } catch (error) {
      throw DomainError.unexpected;
    }
  }

  Future<void> validate() async {
    try {
      final data = await cacheStorage.fetch('home');
      _mapToEntity(data);
    } catch (error) {
      await cacheStorage.delete('home');
    }
  }

  Future<void> save(List<SurveyEntity> surveys) async {
    try {
      final json = _mapToJson(surveys);
      await cacheStorage.save(key: 'home', value: json);
    } catch (error) {
      throw DomainError.unexpected;
    }
  }

  List<SurveyEntity> _mapToEntity(dynamic list) => list
      .map<SurveyEntity>((json) => LocalSurveyModel.fromJson(json).toEntity())
      .toList();

  List<Map> _mapToJson(List<SurveyEntity> list) => list
      .map((entity) => LocalSurveyModel.fromEntity(entity).toJson())
      .toList();
}
