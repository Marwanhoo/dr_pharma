import 'package:flutter_drpharma_2/core/app_export.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: titleAppBar(),
      ),
      body: Column(
        children: [
          const Chats(),
          writeYourMessage(),
        ],
      ),
    );
  }
}
