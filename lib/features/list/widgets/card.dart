import 'package:flutter/material.dart';
import '../list.dart';

class ListCard extends StatelessWidget {
  const ListCard({super.key, required this.item});

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: GestureDetector(
        onTap: () {},
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
                item.imageUrl,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(item.title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 22)),
                      Text(item.date,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.7))),
                      const SizedBox(height: 15),
                      Text(item.decsription,
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
