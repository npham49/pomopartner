import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pomopartner/pages/my_home_page.dart';
import 'package:json_theme/json_theme.dart';
import 'package:pomopartner/pages/new_timer.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void main() async {
  SchemaValidator.enabled = false;
  WidgetsFlutterBinding.ensureInitialized();

  final themeStr = await rootBundle.loadString('assets/appainter_theme.json');
  final themeJson = jsonDecode(themeStr);
  final theme = ThemeDecoder.decodeThemeData(themeJson)!;

  runApp(MyApp(theme: theme));
}

class MyApp extends StatelessWidget {
  final ThemeData theme;
  const MyApp({super.key, required this.theme});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {'/new': (context) => const NewTimerPage()},
      title: 'Flutter Demo',
      theme: theme,
      home: const MyHomePage(title: 'PomoPartner'),
    );
  }
}
