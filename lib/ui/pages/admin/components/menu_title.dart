import 'package:flutter/material.dart';
import 'package:fordev/main/constants.dart';

class MenuTitle {
  final int id;
  final String title;
  final Icon image;
  final Color color;
  MenuTitle({
    required this.id,
    required this.image,
    required this.title,
    required this.color,
  });
}

List<MenuTitle> titles = [
  MenuTitle(
      id: 1,
      title: "Reservas",
      image: Icon(
        Icons.cake_outlined,
        size: defaultIconSize,
        color: Colors.black87,
      ),
      color: Colors.blueGrey.shade50),
  MenuTitle(
      id: 2,
      title: "RH",
      image: Icon(
        Icons.manage_accounts,
        size: defaultIconSize,
        color: Colors.black87,
      ),
      color: Colors.blueGrey.shade50),
  MenuTitle(
      id: 3,
      title: "Unidades",
      image: Icon(
        Icons.business,
        size: defaultIconSize,
        color: Colors.black87,
      ),
      color: Colors.blueGrey.shade50),
  MenuTitle(
      id: 4,
      title: "Condomínio",
      image: Icon(
        Icons.shield_outlined,
        size: defaultIconSize,
        color: Colors.black87,
      ),
      color: Colors.blueGrey.shade50),
  MenuTitle(
      id: 5,
      title: "Moradores",
      image: Icon(
        Icons.person_add_alt_1_outlined,
        size: defaultIconSize,
        color: Colors.black87,
      ),
      color: Colors.blueGrey.shade50),
  MenuTitle(
    id: 6,
    title: "Ocorrências",
    image: Icon(
      Icons.library_books_outlined,
      size: defaultIconSize,
      color: Colors.black87,
    ),
    color: Colors.blueGrey.shade50,
  ),
  MenuTitle(
      id: 7,
      title: "Cadastros",
      image: Icon(
        Icons.folder,
        size: defaultIconSize,
        color: Colors.black87,
      ),
      color: Colors.blueGrey.shade50),
  MenuTitle(
    id: 8,
    title: "Avisos",
    image: Icon(
      Icons.message,
      size: defaultIconSize,
      color: Colors.black87,
    ),
    color: Colors.blueGrey.shade50,
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
