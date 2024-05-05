import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class ItemDetails extends StatefulWidget {
  final int id;

  const ItemDetails({super.key, required this.id});

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Godzilla Minus One')),
      body: const SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImgHeader(),
          MainInfo(),
          Cast(),
        ],
      )),
    );
  }
}
