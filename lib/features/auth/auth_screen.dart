import 'package:flutter/material.dart';

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

class AuthForm extends StatefulWidget {
  const AuthForm({super.key});

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final _emailFieldController = TextEditingController();
  final _passwordFieldController = TextEditingController();
  String? error;

  void _login() {
    final email = _emailFieldController.text;
    final password = _passwordFieldController.text;

    if (email == 'admin' && password == 'admin') {
      error = null;
    } else {
      error = 'Wrong data. Try again.';
    }
    setState(() {});
  }

  void _resetPassword() {}

  final textFieldDecoration = const InputDecoration(
      contentPadding: EdgeInsets.all(10.0),
      isCollapsed: true,
      enabledBorder:
          OutlineInputBorder(borderSide: BorderSide(color: Color(0xFF495057))),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromRGBO(1, 180, 228, 1))));
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 40),
        const Text('Email'),
        const SizedBox(height: 5),
        TextField(
            controller: _emailFieldController, decoration: textFieldDecoration),
        const SizedBox(height: 25),
        const Text('Password'),
        const SizedBox(height: 5),
        TextField(
            obscureText: true,
            controller: _passwordFieldController,
            decoration: textFieldDecoration),
        if (error != null)
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Center(
                child: Text(error!,
                    style: const TextStyle(
                        color: Colors.red, fontWeight: FontWeight.w600))),
          ),
        const SizedBox(height: 40),
        Row(children: [
          ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0))),
                  backgroundColor: MaterialStateProperty.all(
                      const Color.fromRGBO(1, 180, 228, 1)),
                  foregroundColor:
                      const MaterialStatePropertyAll(Colors.white)),
              onPressed: _login,
              child: const Text('Login',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700))),
          TextButton(
              style: const ButtonStyle(
                  overlayColor: MaterialStatePropertyAll(Colors.transparent),
                  foregroundColor:
                      MaterialStatePropertyAll(Color.fromRGBO(1, 180, 228, 1))),
              onPressed: _resetPassword,
              child: const Text('Reset password',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)))
        ])
      ],
    );
  }
}
