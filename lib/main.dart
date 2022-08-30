import 'package:flutter/material.dart';
import 'package:motorcum/desing/app_theme.dart';
import 'package:motorcum/routes/routes.dart';
import 'package:motorcum/states/states.dart';
import 'package:motorcum/views/login.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider<States>(
    create: (BuildContext context) => States(),
    child: MyApp(),
  ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Motorcum',
      theme: AppTheme.lightTheme,
      home: const LoginPage(),
      routes: routes,
    );
  }
}
