import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_article/core/config/theme/app_theme.dart';
import 'package:flutter_article/ui/setting_screen/bloc/setting_screen_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_article/ui/navigation/router.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    context.read<SettingsBloc>().add(const SettingScreenEvent.getSettings());
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangePlatformBrightness() {
    // This will be called when system theme changes
    final currentState = context.read<SettingsBloc>().state;
    if (currentState.settingsEntity.isDarkMode == ThemeMode.system) {
      _updateSystemUIOverlay(ThemeMode.system);
    }
  }

  void _updateSystemUIOverlay(ThemeMode themeMode) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;

      SystemUiOverlayStyle overlayStyle;

      switch (themeMode) {
        case ThemeMode.light:
          overlayStyle = const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark,
            statusBarBrightness: Brightness.light,
            systemNavigationBarColor: Colors.white,
            systemNavigationBarIconBrightness: Brightness.dark,
          );
          break;
        case ThemeMode.dark:
          overlayStyle = const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.light,
            statusBarBrightness: Brightness.dark,
            systemNavigationBarColor: Color(0xFF1A1A1A),
            systemNavigationBarIconBrightness: Brightness.light,
          );
          break;
        case ThemeMode.system:
          final brightness = MediaQuery.of(context).platformBrightness;
          final isDark = brightness == Brightness.dark;
          overlayStyle = SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: isDark
                ? Brightness.light
                : Brightness.dark,
            statusBarBrightness: isDark ? Brightness.dark : Brightness.light,
            systemNavigationBarColor: isDark
                ? const Color(0xFF1A1A1A)
                : Colors.white,
            systemNavigationBarIconBrightness: isDark
                ? Brightness.light
                : Brightness.dark,
          );
          break;
      }

      SystemChrome.setSystemUIOverlayStyle(overlayStyle);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SettingsBloc, SettingScreenState>(
      listenWhen: (previous, current) {
        return previous.settingsEntity.isDarkMode !=
            current.settingsEntity.isDarkMode;
      },
      listener: (context, state) {
        _updateSystemUIOverlay(
          ThemeMode.values.elementAt(state.settingsEntity.isDarkMode),
        );
      },
      builder: (context, state) {
        final themeMode = state.settingsEntity.isDarkMode;
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: AppRouter.router,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: ThemeMode.values.elementAt(themeMode),
        );
      },
    );
  }
}
