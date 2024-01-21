import 'package:flutter_drpharma_2/core/app_export.dart';

Padding writeYourMessage() {
  return const Padding(
    padding: EdgeInsets.all(16),
    child: CustomTextFormField(
      prefixIcon: Icons.emoji_emotions,
      hintText: "Write your message",
      suffixIcon: Icons.send,
      suffixIconColor: Colors.blue,
      borderRadius: 50,
    ),
  );
}
