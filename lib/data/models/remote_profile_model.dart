import '../../domain/entities/entities.dart';
import '../http/http.dart';

class RemoteProfileModel {
  final String name;
  final String email;

  RemoteProfileModel({
    required this.name,
    required this.email,
  });

  factory RemoteProfileModel.fromJson(Map json) {
    if (!json.keys.toSet().containsAll(['name', 'email'])) {
      throw HttpError.invalidData;
    }
    return RemoteProfileModel(
      name: json['name'],
      email: json['email'],
    );
  }

  ProfileEntity toEntity() => ProfileEntity(
        name: name,
        email: email,
      );
}
