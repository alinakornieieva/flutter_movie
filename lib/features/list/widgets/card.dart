import 'package:flutter/material.dart';

class ListCard extends StatefulWidget {
  const ListCard({super.key});

  @override
  State<ListCard> createState() => _ListCardState();
}

class _ListCardState extends State<ListCard> {
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
                  'https://m.media-amazon.com/images/M/MV5BYjZmMjdlNDEtOGE0NC00MmQyLWIyNTgtMzc1NWRjYTYzMWZmXkEyXkFqcGdeQXVyMTA3MDk2NDg2._V1_.jpg'),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Mortal Kombat',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 22)),
                      Text('April 7, 2021',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.7))),
                      const SizedBox(height: 15),
                      const Text(
                          'Washed-up MMA fighter Cole Young, unware of his heritage and that caused',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis)
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
