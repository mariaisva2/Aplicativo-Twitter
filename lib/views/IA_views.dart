import 'package:flutter/material.dart';
import '../widgets/message_bubble.dart';

class MessagesView extends StatelessWidget {
  const MessagesView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      reverse: true,
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) {
        if (index == 0) {
          return const MessageBubble(
            message: 'Hello',
            alignment: Alignment.centerRight,
          );
        }
        return const MessageBubble(
          message: 'Hola!',
          alignment: Alignment.centerLeft,
        );
      },
    );
  }
}
