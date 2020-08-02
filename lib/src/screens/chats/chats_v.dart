import 'dart:math';

import 'package:flutter/material.dart';

class ChatsScreen extends StatefulWidget {
  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  List<String> randPict = <String>[
    'https://dummyimage.com/600x400/0095b3/fff',
    'https://dummyimage.com/600x400/000000/fff',
    'https://dummyimage.com/600x400/b300aa/fff',
    'https://dummyimage.com/600x400/00b342/fff',
    'https://dummyimage.com/600x400/5100b3/fff',
    'https://dummyimage.com/600x400/80b300/fff',
    'https://dummyimage.com/600x400/b3ad00/fff',
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Messages'),
      ),
      body: ListView.builder(
        itemCount: 16,
        itemBuilder: (BuildContext context, int index) => GestureDetector(
          onTap: () {
            // TODO(navigation): navigate to chat room
          },
          child: Container(
            width: size.width,
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Image.network(
                    randPict[index % randPict.length],
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Text(
                            'Name ${++index}',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            'Last Message Here\n'
                            'uh she up',
                            maxLines: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Text(
                  '12:34',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
