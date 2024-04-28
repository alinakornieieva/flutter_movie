import 'package:flutter/material.dart';
import 'package:flutter_movie/router/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: const TextTheme(
              bodyMedium: TextStyle(fontSize: 16),
              bodyLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.w700)),
          appBarTheme: const AppBarTheme(
              backgroundColor: Color.fromRGBO(3, 37, 65, 1),
              foregroundColor: Colors.white,
              centerTitle: true),
          useMaterial3: true,
        ),
        routes: routes);
  }
}
