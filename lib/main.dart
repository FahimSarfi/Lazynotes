import 'package:email_password_login/view/home/main_product_page.dart';
import 'package:email_password_login/controller/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Drent',
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
