import 'package:brandcrowd/models/Messages.dart';
import 'package:flutter/material.dart';

import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';

import '../../../components/coustom_bottom_nav_bar.dart';
import '../../../constants.dart';
import '../../../enums.dart';

class ChatRoom extends StatefulWidget {
  static String routeName = "/chatroom";

  @override
  State<ChatRoom> createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Help Center", style: TextStyle(color: Colors.grey)),
      ),
      body: Column(
        children: [
          Expanded(
              child: GroupedListView<Message, DateTime>(
            padding: EdgeInsets.all(8),
            reverse: true,
            order: GroupedListOrder.DESC,
            useStickyGroupSeparators: true,
            floatingHeader: true,
            elements: demoMessages,
            groupBy: (message) => DateTime(
                message.date.year, message.date.month, message.date.day),
            groupHeaderBuilder: (Message message) => SizedBox(
              height: 40,
              child: Center(
                child: Card(
                  color: kPrimaryColor,
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      DateFormat.yMMMd().format(message.date),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            itemBuilder: (context, Message message) => Align(
              alignment: message.isSentByMe
                  ? Alignment.centerRight
                  : Alignment.centerLeft,
              child: Card(
                color: message.isSentByMe ? kPrimaryColor : kPrimaryLightColor,
                elevation: 8,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    message.text,
                    style: message.isSentByMe
                        ? TextStyle(color: Colors.white)
                        : TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          )),
          Container(
            color: Colors.white,
            child: TextField(
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(12),
                hintText: "Type your message here...",
              ),
              onSubmitted: (text) {
                final message = Message(
                  text: text,
                  date: DateTime.now(),
                  isSentByMe: true,
                );
                setState(() => demoMessages.add(message));
              },
            ),
          )
        ],
      ),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.message),
    );
  }
}
