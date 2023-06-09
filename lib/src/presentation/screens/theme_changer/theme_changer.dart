import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/src/config/theme/app_theme.dart';
import 'package:widgets_app/src/presentation/screens/counter/theme_provider.dart';

class ThemeChangerScreen extends ConsumerWidget {
  static const name = 'theme_changer_screen';
  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool themeNotifier = ref.watch(themeNotifierProvider).isDarkMode;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme changer'),
        actions: [
          IconButton(
            onPressed: () =>
                ref.read(themeNotifierProvider.notifier).toggleDarkMode(),
            // ref.read(isDarkModeProvider.notifier).update((state) => !state),
            icon: themeNotifier
                ? const Icon(Icons.dark_mode_outlined)
                : const Icon(Icons.light_mode_outlined),
          ),
        ],
      ),
      body: const _ThemeChangerView(),
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Color> colors = ref.watch(colorListProvider);
    // final int selectedColor = ref.watch(selectedColorProvider);
    final AppTheme themeNotifier = ref.watch(themeNotifierProvider);
    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index) {
        final Color color = colors[index];
        return RadioListTile(
          title: Text('Este Color', style: TextStyle(color: color)),
          subtitle: Text('${color.value}'),
          activeColor: color,
          value: index,
          groupValue: themeNotifier.selectedColor,
          onChanged: (value) {
            // ref.read(selectedColorProvider.notifier).state = value!;
            ref.read(themeNotifierProvider.notifier).changeColorIndex(value!);
          },
        );
      },
    );
  }
}
