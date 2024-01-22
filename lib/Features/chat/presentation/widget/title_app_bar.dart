import 'package:flutter_drpharma_2/core/app_export.dart';

Row titleAppBar() {
  return const Row(
    children: [
      CircleAvatar(
        child: Icon(
          Icons.wechat_sharp,
        ),
      ),
      SizedBox(
        width: 5,
      ),
      Text(
        'chat with us',
      ),
    ],
  );
}
