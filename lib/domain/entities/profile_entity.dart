import 'package:equatable/equatable.dart';

class ProfileEntity extends Equatable {
  final String name;
  final String email;

  List get props => [name, email];

  ProfileEntity({required this.name, required this.email});
}
