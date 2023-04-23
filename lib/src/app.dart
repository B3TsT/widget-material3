import 'package:flutter/material.dart';

import 'config/theme/app_theme.dart';
import 'presentation/screens/home/home_screen.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 4).getTheme(),
      home: const HomeScreen(),
    );
  }
}
