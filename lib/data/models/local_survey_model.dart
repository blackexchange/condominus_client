import '../../domain/entities/entities.dart';

class LocalSurveyModel {
  final String id;
  final String name;
  final String? lat;
  final String? long;
  final String? address;
  final String? neighbor;
  final String? number;
  final String? city;

  LocalSurveyModel(
      {required this.id,
      required this.name,
      this.lat,
      this.long,
      this.address,
      this.neighbor,
      this.number,
      this.city});

  factory LocalSurveyModel.fromJson(Map json) {
    if (!json.keys.toSet().containsAll(['id', 'name'])) {
      throw Exception();
    }
    return LocalSurveyModel(
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

  factory LocalSurveyModel.fromEntity(SurveyEntity entity) => LocalSurveyModel(
        id: entity.id,
        name: entity.name,
        lat: entity.lat,
        long: entity.long,
        address: entity.address,
        neighbor: entity.neighbor,
        number: entity.number,
        city: entity.city,
      );

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

  Map<String, String> toJson() => {
        'id': id,
        'name': name,
        'lat': lat ?? '',
        'long': long ?? '',
        'address': address ?? '',
        'neighbor': neighbor ?? '',
        'number': number ?? '',
        'city': city ?? '',
        /* 'id': id,
        'question': question,
        'date': date.toIso8601String(),
        'didAnswer': didAnswer.toString(),*/
      };
}
