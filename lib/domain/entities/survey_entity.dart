import 'package:equatable/equatable.dart';

class SurveyEntity extends Equatable {
  final String id;
  final String name;
  final String? lat;
  final String? long;
  final String? address;
  final String? neighbor;
  final String? number;
  final String? city;

  List get props => [
        id,
        name,
        lat,
        long,
        address,
        neighbor,
        number,
        city,
      ];

  SurveyEntity(
      {required this.id,
      required this.name,
      this.lat,
      this.long,
      this.address,
      this.neighbor,
      this.number,
      this.city});
}
