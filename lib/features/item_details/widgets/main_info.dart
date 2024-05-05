import 'package:flutter/material.dart';

class MainInfo extends StatelessWidget {
  const MainInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(20),
      color: const Color.fromRGBO(59, 130, 246, 0.2),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Center(
          child: RichText(
            text: TextSpan(
              text: 'Godzilla Minus One ',
              style: theme.textTheme.bodyLarge,
              children: [
                TextSpan(
                    text: '(2023)',
                    style: TextStyle(color: Colors.black.withOpacity(0.5))),
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('72% User Score', style: theme.textTheme.bodyMedium),
            Text('|', style: theme.textTheme.bodyMedium),
            TextButton(
                style: const ButtonStyle(
                  overlayColor: MaterialStatePropertyAll(Colors.transparent),
                  iconColor: MaterialStatePropertyAll(Colors.black),
                  foregroundColor: MaterialStatePropertyAll(Colors.black),
                ),
                onPressed: () {},
                child: Row(
                  children: [
                    const Icon(Icons.play_arrow),
                    Text('Play Trailer', style: theme.textTheme.bodyMedium)
                  ],
                ))
          ],
        ),
        Text(
          'Overview',
          style: theme.textTheme.bodyLarge,
        ),
        const Text(
            'Postwar Japan is at its lowest point when a new crisis emerges in the form of a giant monster, baptized in the horrific power of the atomic bomb.'),
        const SizedBox(height: 30),
        const Text('Takashi Yamazaki',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
        const Text('Director, Screenplay'),
      ]),
    );
  }
}
