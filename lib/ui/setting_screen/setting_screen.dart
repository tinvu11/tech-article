import 'package:flutter/material.dart';
import 'package:flutter_article/ui/setting_screen/bloc/setting_screen_bloc.dart';
import 'package:flutter_article/ui/setting_screen/widgets/theme_switcher.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    final texTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return BlocBuilder<SettingsBloc, SettingScreenState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'Cài đặt',
              style: texTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
            child: Column(
              children: [
                Divider(color: colorScheme.secondary),

                ThemeSwitcher(),

                Divider(color: colorScheme.secondary),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  horizontalTitleGap: 10,
                  leading: Icon(Icons.phone),
                  title: Text('Contact us', style: texTheme.bodyLarge),
                ),

                Divider(color: colorScheme.secondary),

                const SizedBox(height: 10),
                Text('version: 1.1.1.1', style: texTheme.bodyMedium),
              ],
            ),
          ),
        );
      },
    );
  }
}
