import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:frontent_alzheimermemories_flutter/screens/login_screen.dart';
import 'package:frontent_alzheimermemories_flutter/shared/sidebar/menu.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AlzheimerMemories App',
      initialRoute: 'login',
      routes: {
        'login': (_) => const LoginScreen(),
        'home': (context) => const MenuPrincipal(),
      },
      theme:
          ThemeData.light().copyWith(scaffoldBackgroundColor: Colors.grey[300]),
    );
  }
}
