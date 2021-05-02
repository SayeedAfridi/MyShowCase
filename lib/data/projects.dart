import 'package:myshowcase/models/project.dart';
import 'package:myshowcase/theme/theme.dart';
import 'package:myshowcase/ui/widgets/project_card/project_card.dart';

class Projects {
  const Projects._();

  static const int length = 2;
  static const clock = Project(colors: GradientColors.fire);
  static const pin = Project(colors: GradientColors.sea);
  static const pn = Project(colors: GradientColors.sea);

  static List<ProjectCard> getProjects() => [
        ProjectCard(project: clock),
        ProjectCard(project: pin),
        ProjectCard(project: pn),
        ProjectCard(project: pn),
      ];
}
