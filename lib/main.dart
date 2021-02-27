import 'package:albeline/routes.dart';
import 'package:albeline/theme.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'ui/uis.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ALBELINE',
      theme: theme(),
      // home: SplashScreen(),
      // We use routeName so that we dont need to remember the name
      // initialRoute: HomeScreen.routeName,
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
