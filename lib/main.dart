import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_google_books_corsov2/app.dart';
import 'package:flutter_google_books_corsov2/injectable.dart';
import 'package:json_theme/json_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();

  final themeString = await rootBundle.loadString('assets/theme/theme.json');
  final themeJson = jsonDecode(themeString);
  final theme = ThemeDecoder.decodeThemeData(themeJson)!;

  runApp(App(theme: theme));
}
