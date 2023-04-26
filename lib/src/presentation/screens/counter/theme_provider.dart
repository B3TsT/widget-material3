import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/src/config/theme/app_theme.dart';

// final isDarkModeProvider = StateProvider<bool>((ref) => false);
final colorListProvider = Provider<List<Color>>((ref) => colorList);
// final selectedColorProvider = StateProvider<int>((ref) => 0);
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
    (ref) => ThemeNotifier(AppTheme()));

class ThemeNotifier extends StateNotifier<AppTheme> {
  ThemeNotifier(super.state);
  void toggleDarkMode() {
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

  void changeColorIndex(int index) {
    state = state.copyWith(selectedColor: index);
  }
}
