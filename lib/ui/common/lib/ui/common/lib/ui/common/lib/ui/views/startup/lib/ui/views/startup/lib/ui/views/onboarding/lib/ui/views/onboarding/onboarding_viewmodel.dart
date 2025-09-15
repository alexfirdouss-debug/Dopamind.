import 'package:dopamind/app/app.locator.dart';
import 'package:dopamind/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class OnboardingViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void navigateToLogin() {
    _navigationService.navigateTo(Routes.loginView);
  }
}
