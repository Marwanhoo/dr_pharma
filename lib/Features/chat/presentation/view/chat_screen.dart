import 'package:flutter_drpharma_2/core/app_export.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: titleAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Chats(),
            writeYourMessage(),
          ],
        ),
      ),
    );
  }
}
