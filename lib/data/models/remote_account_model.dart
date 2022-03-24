import '../../domain/entities/entities.dart';
import '../http/http.dart';
import './models.dart';

class RemoteAccountModel {
  final String accessToken;

  RemoteAccountModel({required this.accessToken});

  factory RemoteAccountModel.fromJson(Map json) {
    //if (!json.keys.toSet().containsAll(['answer', 'isCurrentAccountAnswer', 'percent'])) {

    if (!json.containsKey('token')) {
      throw HttpError.invalidData;
    }
    return RemoteAccountModel(
      accessToken: json['token'],
    );
  }

  AccountEntity toEntity() => AccountEntity(token: accessToken);
}
