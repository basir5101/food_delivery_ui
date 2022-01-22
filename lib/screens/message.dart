import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/custom_widgets/bottom_menubar.dart';
import 'package:food_delivery_app/custom_widgets/chat_card.dart';

class MessageList extends StatefulWidget {
  const MessageList({Key? key}) : super(key: key);

  @override
  _MessageListState createState() => _MessageListState();
}

class _MessageListState extends State<MessageList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomMenuBar(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.all(18.0),
            child: Text('Chat', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30
            ),),
          ),
          ChatCard(),
          ChatCard(),
          ChatCard(),
          ChatCard(),
          ChatCard(),
        ],
      ),
    );
  }
}
