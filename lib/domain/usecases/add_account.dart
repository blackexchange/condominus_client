import '../entities/entities.dart';

import 'package:equatable/equatable.dart';

abstract class AddAccount {
  Future<AccountEntity> add(AddAccountParams params);
}

class AddAccountParams extends Equatable {
  final String name;
  final String email;
  final String cpf;
  final String phone;
  final String password;
  final String passwordConfirmation;

  List get props => [name, email, cpf, phone, password, passwordConfirmation];

  AddAccountParams(
      {required this.name,
      required this.email,
      required this.cpf,
      required this.phone,
      required this.password,
      required this.passwordConfirmation});
}
