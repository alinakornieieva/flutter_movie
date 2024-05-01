import 'package:flutter/material.dart';
import 'package:flutter_movie/features/list/list.dart';

class List extends StatefulWidget {
  const List({super.key});

  @override
  State<List> createState() => _ListState();
}

class _ListState extends State<List> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 8,
      itemExtent: 170,
      itemBuilder: (context, index) => const ListCard(),
    );
  }
}
