import 'package:flutter/material.dart';
import 'package:flutter_article/app.dart';
import 'package:flutter_article/core/config/hive/app_hive.dart';
import 'package:flutter_article/service_locator.dart';
import 'package:flutter_article/simple_bloc_observer.dart';
import 'package:flutter_article/ui/setting_screen/bloc/setting_screen_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appHive = AppHive();
  await appHive.init();
  await initializeDependencies(appHive: appHive);
  Bloc.observer = SimpleBlocObserver();
  runApp(
    BlocProvider(create: (context) => sl<SettingsBloc>(), child: const App()),
  );
}
