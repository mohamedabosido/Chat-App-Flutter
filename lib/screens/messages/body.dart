import 'package:chat_app/constants.dart';
import 'package:chat_app/models/ChatMessage.dart';
import 'package:chat_app/widgets/chat_textfield.dart';
import 'package:chat_app/widgets/message_card.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: ListView.builder(
              itemCount: demeChatMessages.length,
              itemBuilder: (context, index) {
                return MessageCard(message: demeChatMessages[index]);
              },
            ),
          ),
        ),
        const ChatTextField(),
      ],
    );
  }
}
