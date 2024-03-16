import 'package:flutter/material.dart';
import 'package:test_app/events/user_preferences.dart';
import 'package:test_app/pages/editing_profile_page.dart';
import 'package:test_app/pages/home.dart';

void main()  {
  //WidgetsFlutterBinding.ensureInitialized();
  //await UserPreferences.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Home(),
      );
  }
}
