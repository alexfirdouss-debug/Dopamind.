import 'package:dopamind/services/authentication_service.dart';
import 'package:dopamind/services/firestore_service.dart';
import 'package:dopamind/services/user_service.dart';
import 'package:dopamind/ui/views/focus/focus_view.dart';
import 'package:dopamind/ui/views/goals/goals_view.dart';
import 'package:dopamind/ui/views/home/home_view.dart';
import 'package:dopamind/ui/views/login/login_view.dart';
import 'package:dopamind/ui/views/main_layout/main_layout_view.dart';
import 'package:dopamind/ui/views/music/music_view.dart';
import 'package:dopamind/ui/views/onboarding/onboarding_view.dart';
import 'package:dopamind/ui/views/personalization/personalization_view.dart';
import 'package:dopamind/ui/views/planner/planner_view.dart';
import 'package:dopamind/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: StartupView, initial: true),
    MaterialRoute(page: OnboardingView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: PersonalizationView),
    MaterialRoute(page: MainLayoutView, children: [
      MaterialRoute(page: HomeView, initial: true),
      MaterialRoute(page: FocusView),
      MaterialRoute(page: PlannerView),
      MaterialRoute(page: MusicView),
      MaterialRoute(page: GoalsView),
    ]),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: SnackbarService),
    LazySingleton(classType: AuthenticationService),
    LazySingleton(classType: FirestoreService),
    LazySingleton(classType: UserService),
  ],
  logger: StackedLogger(),
)
class AppSetup {
  /** Serves no purpose besides having an annotation attached to it */
}
