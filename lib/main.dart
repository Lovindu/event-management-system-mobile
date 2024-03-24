import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:test_app/components/app_constatnts.dart';
import 'package:test_app/events/splash_screen.dart';
import 'package:test_app/pages/home.dart';
import 'package:test_app/pages/loading.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:test_app/pages/login.dart';
import 'package:test_app/pages/sign_up.dart';
import 'firebase_options.dart';

Future<void> main() async {
  Stripe.publishableKey = publishableKey;
  WidgetsFlutterBinding.ensureInitialized();
  //await UserPreferences.init();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      routes: {
        '/': (context) => SplashScreen(
              child: Loading(),
            ),
        '/login': (context) => LoginPage(),
        '/signUp': (context) => SignUp(),
        '/home': (context) => Home(),
      },
    );
  }
}
