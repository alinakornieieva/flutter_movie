import 'package:flutter/material.dart';
import '../list.dart';

class ListCard extends StatefulWidget {
  const ListCard({super.key, required this.item});

  final Item item;

  @override
  State<ListCard> createState() => _ListCardState();
}

class _ListCardState extends State<ListCard> {
  void onCardTap(int index) {
    Navigator.of(context).pushNamed('/home/details/', arguments: index);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: GestureDetector(
        onTap: () => onCardTap(widget.item.id),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(0, 5),
                )
              ],
              border: Border.all(color: Colors.grey.shade500, width: 1)),
          clipBehavior: Clip.hardEdge,
          child: Row(
            children: [
              Image.network(
                widget.item.imageUrl,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(widget.item.title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 22)),
                      Text(widget.item.date,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.7))),
                      const SizedBox(height: 15),
                      Text(widget.item.decsription,
                          maxLines: 2, overflow: TextOverflow.ellipsis)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
