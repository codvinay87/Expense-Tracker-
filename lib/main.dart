import 'package:expense_tracker/widgets/expense.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

var kcolorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
);
var kDarkColorScheme = ColorScheme.fromSeed(
    seedColor: Color.fromARGB(255, 5, 99, 125), brightness: Brightness.dark);
void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((fn) {
    runApp(
      MaterialApp(
        darkTheme: ThemeData.dark().copyWith(
          useMaterial3: true,
          colorScheme: kDarkColorScheme,
          cardTheme: CardTheme().copyWith(
            color: kDarkColorScheme.secondaryContainer,
            margin: const EdgeInsets.all(30),
          ),
          appBarTheme: AppBarTheme().copyWith(
              backgroundColor: kDarkColorScheme.onPrimaryContainer,
              foregroundColor: kDarkColorScheme.onPrimary),
        ),
        theme: ThemeData().copyWith(
          useMaterial3: true,
          colorScheme: kcolorScheme,
          appBarTheme: AppBarTheme().copyWith(
              backgroundColor: kcolorScheme.onPrimaryContainer,
              foregroundColor: kcolorScheme.onPrimary),
          cardTheme: CardTheme().copyWith(
            color: kcolorScheme.secondaryContainer,
            margin: const EdgeInsets.all(30),
          ),
        ),
        themeMode: ThemeMode.system,
        home: const Expenses(),
      ),
    );
  });
}
