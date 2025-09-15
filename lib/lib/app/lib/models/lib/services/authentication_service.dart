import 'package:dopamind/models/app_user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthenticationService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  AppUser? _currentUser;
  AppUser? get currentUser => _currentUser;

  Future<void> listenToAuthChanges() async {
    _firebaseAuth.authStateChanges().listen((User? user) {
      if (user != null) {
        _currentUser = AppUser(uid: user.uid, email: user.email);
      } else {
        _currentUser = null;
      }
    });
  }

  Future<bool> isUserLoggedIn() async {
    await listenToAuthChanges();
    return _firebaseAuth.currentUser != null;
  }

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
    await GoogleSignIn().signOut();
    _currentUser = null;
  }

  // TODO: Implement sign in and sign up methods here
}
