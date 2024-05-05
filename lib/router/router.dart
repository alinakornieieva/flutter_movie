import 'package:flutter/material.dart';
import 'package:flutter_movie/features/auth/auth.dart';
import 'package:flutter_movie/features/home/home.dart';
import 'package:flutter_movie/features/item_details/item_details.dart';

final routes = {
  '/': (context) => const AuthScreen(),
  '/home': (context) => const HomeScreen(),
  '/home/details/': (context) {
    final arguments = ModalRoute.of(context)?.settings.arguments;
    if (arguments is int) {
      return ItemDetails(id: arguments);
    } else {
      //later - error screen
      return const Center(child: Text('Something went wrong'));
    }
  }
};
