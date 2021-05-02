import 'package:myshowcase/ui/home/home_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_themes/stacked_themes.dart';

@StackedApp(
  routes: [
    CupertinoRoute(page: HomeView, initial: true),
  ],
  dependencies: [
    Singleton(classType: ThemeService, resolveUsing: ThemeService.getInstance),
    LazySingleton(classType: NavigationService),
  ],
  logger: StackedLogger(),
)
class AppClass {}
