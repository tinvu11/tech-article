import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_article/app.dart';
import 'package:flutter_article/service_locator.dart';
import 'package:flutter_article/simple_bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();
  Bloc.observer = SimpleBlocObserver();
  runApp(const App());
}
