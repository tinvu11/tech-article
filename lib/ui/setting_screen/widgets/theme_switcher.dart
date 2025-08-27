import 'package:flutter/material.dart';
import 'package:flutter_article/ui/setting_screen/bloc/setting_screen_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeSwitcher extends StatefulWidget {
  const ThemeSwitcher({super.key});

  @override
  State<ThemeSwitcher> createState() => _ThemeSwitcherState();
}

class _ThemeSwitcherState extends State<ThemeSwitcher> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingScreenState>(
      builder: (context, state) {
        final texTheme = Theme.of(context).textTheme;
        final colorScheme = Theme.of(context).colorScheme;
        final currentThemeMode = state.settingsSnapshot.themeMode;
        return ListTile(
          contentPadding: EdgeInsets.zero,
          leading: const Icon(Icons.color_lens_rounded),
          title: Text('Theme', style: texTheme.bodyLarge),
          trailing: Container(
            decoration: BoxDecoration(
              color: colorScheme.surfaceVariant,
              borderRadius: BorderRadius.circular(20),
            ),
            child: DropdownButton<ThemeMode>(
              value: ThemeMode.values.elementAt(currentThemeMode),
              underline: const SizedBox(), // Vẫn giữ để bỏ gạch chân
              icon: const Icon(Icons.keyboard_arrow_down),
              dropdownColor: colorScheme
                  .secondaryContainer, // Có thể dùng màu này cho hợp theme
              borderRadius: BorderRadius.circular(15),
              items: const [
                DropdownMenuItem(
                  value: ThemeMode.system,
                  child: Row(
                    children: [
                      Icon(Icons.settings_brightness_outlined),
                      SizedBox(width: 8),
                      Text('System'),
                    ],
                  ),
                ),
                DropdownMenuItem(
                  value: ThemeMode.light,
                  child: Row(
                    children: [
                      Icon(Icons.light_mode_outlined),
                      SizedBox(width: 8),
                      Text('Light'),
                    ],
                  ),
                ),
                DropdownMenuItem(
                  value: ThemeMode.dark,
                  child: Row(
                    children: [
                      Icon(Icons.dark_mode_outlined),
                      SizedBox(width: 8),
                      Text('Dark'),
                    ],
                  ),
                ),
              ],
              // NEW: Cải tiến mục được chọn để hiển thị cả icon
              selectedItemBuilder: (context) {
                return ThemeMode.values.map((theme) {
                  String name;
                  IconData icon;
                  switch (theme) {
                    case ThemeMode.light:
                      name = 'Light';
                      icon = Icons.light_mode_outlined;
                      break;
                    case ThemeMode.dark:
                      name = 'Dark';
                      icon = Icons.dark_mode_outlined;
                      break;
                    case ThemeMode.system:
                    default:
                      name = 'System';
                      icon = Icons.settings_brightness_outlined;
                  }
                  return Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(icon, size: 18),
                      const SizedBox(width: 8),
                      Text(name, style: texTheme.bodyMedium),
                    ],
                  );
                }).toList();
              },
              onChanged: (value) {
                if (value != null) {
                  _onChangeTheme(value);
                }
              },
            ),
          ),
        );
      },
    );
  }

  void _onChangeTheme(ThemeMode themeMode) {
    context.read<SettingsBloc>().add(
      SettingScreenEvent.saveSettings(themeMode: themeMode.index),
    );
  }
}
