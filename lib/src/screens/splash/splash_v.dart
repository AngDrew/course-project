import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateNext();
  }

  Future<void> navigateNext() async {
    await Future<void>.delayed(const Duration(seconds: 2));
    Navigator.pushReplacementNamed(context, '/auth');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const <Widget>[
            CircularProgressIndicator(),
            Text('Please wait...')
          ],
        ),
      ),
    );
  }
}
