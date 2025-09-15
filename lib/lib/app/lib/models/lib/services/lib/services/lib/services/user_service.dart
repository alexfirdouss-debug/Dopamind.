import 'package:dopamind/models/app_user.dart';

class UserService {
  AppUser? _currentUser;
  AppUser? get currentUser => _currentUser;

  void setCurrentUser(AppUser user) {
    _currentUser = user;
  }

  void clearUser() {
    _currentUser = null;
  }
}
