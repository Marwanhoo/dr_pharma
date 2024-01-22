import 'package:flutter_drpharma_2/core/app_export.dart';

class Chats extends StatelessWidget {
  const Chats({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) {
          return chatItemBuilder(index);
        },
        separatorBuilder: (context, index) => const SizedBox(
          height: 16.0,
        ),
        itemCount: 2 * DataChat.userChat.length - 1,
      ),
    );
  }

  // Widget chatItemBuilder(int index) {
  //    if (index % 2 == 0) {
  //     return const UserItemChat();
  //   }else{
  //     return const MyItemChat();
  //   }
  // }
  Widget chatItemBuilder(int index) {
    if (index.isEven) {
      // User's chat
      return UserItemChat(message: DataChat.userChat[index ~/ 2]);
    } else {
      // AI's chat
      return MyItemChat(message: DataChat.myItemChat[index ~/ 2]);
    }
  }
}