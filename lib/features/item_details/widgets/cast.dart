import 'package:flutter/material.dart';

class Cast extends StatelessWidget {
  const Cast({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Top Billed Cast',
              style: theme.textTheme.bodyLarge,
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              height: 250,
              child: Scrollbar(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [1, 2, 3, 4, 5, 6, 7].map((e) {
                    return Container(
                      width: 120,
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border:
                            Border.all(color: Colors.black.withOpacity(0.3)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            child: Image.network(
                              'https://image.tmdb.org/t/p/w120_and_h133_face/ut7ewXjdgUmgkhJ1EtbOo9tbc7s.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Text('Ryunosuke Kamiki',
                              style: TextStyle(fontWeight: FontWeight.w600),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis),
                          const Text('Koichi Shikishima',
                              maxLines: 2, overflow: TextOverflow.ellipsis),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
            )
          ],
        ));
  }
}
