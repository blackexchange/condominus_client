import '../../domain/entities/entities.dart';
import '../../data/http/http.dart';

class RemoteSurveyModel {
  final String id;
  final String name;
  final String? lat;
  final String? long;
  final String? address;
  final String? neighbor;
  final String? number;
  final String? city;

  RemoteSurveyModel(
      {required this.id,
      required this.name,
      this.lat,
      this.long,
      this.address,
      this.neighbor,
      this.number,
      this.city});

  factory RemoteSurveyModel.fromJson(Map json) {
    if (!json.keys.toSet().containsAll(['id', 'name'])) {
      throw HttpError.invalidData;
    }
    return RemoteSurveyModel(
      id: json['id'],
      name: json['name'],
      lat: json['lat'],
      long: json['long'],
      address: json['address'],
      neighbor: json['neighbor'],
      number: json['number'],
      city: json['city'],
    );
  }

  SurveyEntity toEntity() => SurveyEntity(
        id: id,
        name: name,
        lat: lat,
        long: long,
        address: address,
        neighbor: neighbor,
        number: number,
        city: city,
      );
}
