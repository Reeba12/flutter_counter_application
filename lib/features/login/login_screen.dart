import 'package:demo/features/home/home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login Screen',
              style: Theme.of(context).textTheme.headline2!.copyWith(
                    color: Colors.white,
                  ),
            ),
            const SizedBox(
              height: 16,
            ),
            TextButton(
              child: const Text('Go to Home'),
              onPressed: () {
                Navigator.pushNamed(context, "home");
              },
            )
          ],
        ),
      ),
    );
  }
}
