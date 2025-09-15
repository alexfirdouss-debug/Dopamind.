import 'package:dopamind/app/app.locator.dart';
import 'package:dopamind/services/user_service.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  final _userService = locator<UserService>();

  String get userName => _userService.currentUser?.displayName ?? 'User';

  void navigateToFocus() {
    // This requires communication between ViewModels,
    // which can be handled by a shared service or a different architecture.
    // For now, we'll just print a message.
    print('Navigate to Focus Tapped. Implement navigation via a service.');
  }
}
