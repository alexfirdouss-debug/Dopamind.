import 'package:dopamind/app/app.locator.dart';
import 'package:dopamind/app/app.router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

// IMPORTANT: After setting up Firebase in your project, you will need to
// generate the firebase_options.dart file by running `flutterfire configure`.
// Then, you can uncomment the Firebase.initializeApp line.
// import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // You must set up Firebase for the app to run correctly.
  // Uncomment this line after running `flutterfire configure` in your build environment.
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  
  await setupLocator();
  runApp(const DopamindApp());
}

class DopamindApp extends StatelessWidget {
  const DopamindApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dopamind',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF121212),
        fontFamily: 'Inter',
      ),
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
    );
  }
}
