import 'package:flutter/material.dart';
import 'package:myshowcase/models/project.dart';

class ProjectCard extends StatelessWidget {
  final Project project;
  final void Function()? onTap;

  const ProjectCard({Key? key, required this.project, this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 180,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: project.colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    );
  }
}
