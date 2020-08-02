import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'src/screens/screens.dart';
import 'src/screens/view_models.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: <SingleChildWidget>[
        ChangeNotifierProvider<ChatRoomViewModel>(
          create: (BuildContext context) => ChatRoomViewModel(),
        ),
      ],
      builder: (BuildContext context, Widget child) => child,
      child: MaterialApp(
        title: 'Chat App Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: '/',
        routes: <String, Widget Function(BuildContext)>{
          '/': (BuildContext context) => SplashScreen(),
          '/auth': (BuildContext context) => AuthScreen(),
          '/verify': (BuildContext context) => VerifyScreen(),
          '/chats': (BuildContext context) => ChatsScreen(),
        },
      ),
    );
  }
}
