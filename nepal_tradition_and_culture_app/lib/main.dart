import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nepal_tradition_and_culture_app/screens/login_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nepal Culture And Tradition App',
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: const LoginScreen(),
    );
  }
}
