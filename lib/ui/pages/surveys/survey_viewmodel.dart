import 'package:equatable/equatable.dart';

class SurveyViewModel extends Equatable {
  final String id;
  final String name;
  final String? lat;
  final String? long;
  final String? address;
  final String? neighbor;
  final String? number;
  final String? city;
/*
state
country
postal
telephone
email
admin_id
user_id
building_id
logo
is_active
deleted_at
created_at
updated_at
  */

  List get props => [id, name, lat, long, address, neighbor, number, city];

  SurveyViewModel(
      {required this.id,
      required this.name,
      this.lat,
      this.long,
      this.address,
      this.neighbor,
      this.number,
      this.city});
}
