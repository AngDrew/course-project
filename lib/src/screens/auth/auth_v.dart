import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  TextEditingController phoneNumber;

  @override
  void initState() {
    super.initState();
    phoneNumber = TextEditingController();
  }

  @override
  void dispose() {
    phoneNumber.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Authentication'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 16,
            ),
            // phone form top
            TextField(
              controller: phoneNumber,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: '081234567890',
                labelText: 'Phone Number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const Expanded(
              child: SizedBox(),
            ),
            // confirm button bottom
            Container(
              width: size.width,
              height: 50,
              child: RaisedButton(
                onPressed: () {
                  // TODO(navigation): next screen
                  Navigator.pushReplacementNamed(context, '/verify');
                },
                color: Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  'Send OTP',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
