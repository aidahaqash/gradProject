// ignore_for_file: file_names

class Message {
  final String text;
  final DateTime date;
  final bool isSentByMe;

  Message({
    required this.text,
    required this.date,
    required this.isSentByMe,
  });
}

List<Message> demoMessages = [
  Message(
      text: "Can i ask for help?",
      date: DateTime.now().subtract(Duration(days: 3, minutes: 3)),
      isSentByMe: true),
  Message(
      text: "Yes, sure",
      date: DateTime.now().subtract(Duration(days: 3, minutes: 4)),
      isSentByMe: false),
];
