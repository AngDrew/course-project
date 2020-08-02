import 'package:main_chat_app/src/models/chat_model.dart';
import 'package:main_chat_app/src/models/user_model.dart';

class ChatRepository {
  static Future<List<ChatModel>> fetchChat() async {
    await Future<void>.delayed(const Duration(seconds: 3));

    return <ChatModel>[
      ChatModel(
        sender: const UserModel(
          name: 'Hooman',
        ),
        message: 'Hello there',
        received: DateTime.now(),
      ),
      ChatModel(
        sender: const UserModel(
          name: 'Me',
        ),
        message: 'Uh, who are you?',
        received: DateTime.now().add(const Duration(minutes: 1)),
      ),
      ChatModel(
        sender: const UserModel(
          name: 'Hooman',
        ),
        message: 'Nice to meet you, I\'m hooman, and you can call me ho',
        received: DateTime.now().add(const Duration(minutes: 2)),
      ),
      ChatModel(
        sender: const UserModel(
          name: 'Me',
        ),
        message: 'Please leave me alone! >_<',
        received: DateTime.now().add(const Duration(minutes: 3)),
      ),
    ];
  }
}
