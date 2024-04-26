import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TheMovieDB'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Login to your account'),
              const SizedBox(height: 10.0),
              RichText(
                  text: TextSpan(
                      style: Theme.of(context).textTheme.bodyMedium,
                      children: const [
                    TextSpan(
                        text:
                            'In order to use the editing and rating capabilities of TMDB, as well as get personal recommendations you will need to login to your account. If you do not have an account, registering for an account is free and simple. '),
                    TextSpan(text: 'Click here'),
                    TextSpan(text: ' to get started.')
                  ])),
              const SizedBox(height: 10.0),
              const Text(
                  'If you signed up but didn`t get your verification email, click here to have it resent.')
            ],
          ),
        ),
      ),
    );
  }
}
