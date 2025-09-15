import 'package:stacked/stacked.dart';
import 'package:dopamind/app/app.locator.dart';
import 'package:dopamind/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:dopamind/services/authentication_service.dart';

class StartupViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _authService = locator<AuthenticationService>();

  Future runStartupLogic() async {
    await Future.delayed(const Duration(seconds: 3));

    if (await _authService.isUserLoggedIn()) {
      _navigationService.replaceWithMainLayoutView();
    } else {
      _navigationService.replaceWithOnboardingView();
    }
  }
}
