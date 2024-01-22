import 'package:flutter_drpharma_2/core/app_export.dart';

class MyItemChat extends StatelessWidget {
  const MyItemChat({super.key, required this.message});
  final String message;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(GlobalKeyy.currentContext).size.height / 10,
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           myItemChatIcon(),
          const SizedBox(
            width: 5,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 10.0,
            ),
            decoration: const BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadiusDirectional.only(
                bottomEnd: Radius.circular(
                  50,
                ),
                topStart: Radius.circular(
                  50,
                ),
                topEnd: Radius.circular(
                  50,
                ),
              ),
            ),
            child: Text(
              message,
              style: Theme.of(GlobalKeyy.currentContext).textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }

  Column myItemChatIcon() {
    return const Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  radius: 15,
                  backgroundColor: AppColors.primary,
                  child: Icon(
                    size: 20,
                    Icons.wechat_sharp,
                    color: Colors.white,
                  ),
                ),
                CircleAvatar(
                  radius: 6,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.green,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
          ],
        );
  }
}
