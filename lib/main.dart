import 'package:flutter/material.dart';

import 'package:project3/widgets/expenses.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 255, 0, 0),
);

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: Colors.black,
          foregroundColor: Colors.red,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const Expenses(),
    ),
  );
}
