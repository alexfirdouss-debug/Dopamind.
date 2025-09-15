# Dopamind - Flutter Focus Mastery App

This project is a complete Flutter application skeleton built with the **Stacked (MVVM)** architecture.

### Firebase Setup

1.  Create a project in the Firebase Console.
2.  Register an Android and iOS app.
3.  For Android, place the downloaded `google-services.json` file in an `android/app/` directory (you'll need to create these).
4.  Enable **Email/Password**, **Google**, and **Apple** authentication.
5.  Set up the **Firestore Database**.

### Codemagic Build Steps

In your Codemagic workflow, you MUST add these commands to your pre-build script, right after `flutter pub get`:

```bash
flutter pub run build_runner build --delete-conflicting-outputs
