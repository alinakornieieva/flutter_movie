import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('TheMovieDB'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('Login to your account', style: theme.textTheme.bodyLarge),
          const AuthForm(),
          const SizedBox(height: 40.0),
          const Text(
              'In order to use the editing and rating capabilities of TMDB, as well as get personal recommendations you will need to login to your account. If you do not have an account, registering for an account is free and simple. '),
          TextButton(
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(const EdgeInsets.all(0.0)),
                  overlayColor:
                      const MaterialStatePropertyAll(Colors.transparent),
                  foregroundColor: const MaterialStatePropertyAll(
                      Color.fromRGBO(1, 180, 228, 1))),
              onPressed: () {},
              child: const Text('Register',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700))),
          const SizedBox(height: 10.0),
          const Text(
              'If you signed up but didn`t get your verification email.'),
          TextButton(
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(const EdgeInsets.all(0.0)),
                  overlayColor:
                      const MaterialStatePropertyAll(Colors.transparent),
                  foregroundColor: const MaterialStatePropertyAll(
                      Color.fromRGBO(1, 180, 228, 1))),
              onPressed: () {},
              child: const Text('Verify email',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700))),
        ])),
      ),
    );
  }
}
