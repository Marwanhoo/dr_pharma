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



class OneItem extends StatelessWidget {

  const OneItem({super.key, required this.message, required this.colorContainer, required this.radius});
  final String message;
  final Color colorContainer;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 10.0,
            ),
            decoration:  BoxDecoration(
              color: colorContainer,
              borderRadius: const BorderRadiusDirectional.only(
                bottomEnd: Radius.circular(
                  50,
                ),
                bottomStart: Radius.circular(
                  50,
                ),
                topStart: Radius.circular(
                  50,
                ),
              ),
            ),
            child: Text(
              message,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
