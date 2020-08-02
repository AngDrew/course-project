import 'package:flutter/material.dart';

class VerifyScreen extends StatefulWidget {
  @override
  _VerifyScreenState createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  @override
  void initState() {
    super.initState();
    navigateNext();
  }

  Future<void> navigateNext() async {
    await Future<void>.delayed(const Duration(seconds: 2));
    Navigator.pushReplacementNamed(context, '/chats');
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
            Text('Verifying...')
          ],
        ),
      ),
    );
  }
}
