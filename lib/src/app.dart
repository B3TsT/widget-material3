import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/src/presentation/screens/counter/theme_provider.dart';

import 'config/router/app_router.dart';
import 'config/theme/app_theme.dart';

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final isDarkMode = ref.watch(isDarkModeProvider);
    // final selectedColor = ref.watch(selectedColorProvider);
    final AppTheme appTheme = ref.watch(themeNotifierProvider);
    return MaterialApp.router(
      title: 'Flutter Widgets',
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      // theme: AppTheme(
      //         selectedColor: appTheme.selectedColor,
      //         isDarkMode: appTheme.isDarkMode)
      //     .getTheme(),
      theme: appTheme.getTheme(),
    );
  }
}
