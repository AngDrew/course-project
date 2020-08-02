import 'package:main_chat_app/src/models/user_model.dart';

class ChatModel {
  const ChatModel({
    this.message,
    this.received,
    this.sender,
  });

  final String message;
  final UserModel sender;
  final DateTime received;
}
