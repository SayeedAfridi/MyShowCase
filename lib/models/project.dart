import 'package:flutter/cupertino.dart';

class Project {
  final String? title;
  final String? imagePath;
  final String? description;
  final String? route;
  final List<Color> colors;

  const Project({
    this.title,
    this.imagePath,
    this.description,
    this.route,
    required this.colors,
  });
}
