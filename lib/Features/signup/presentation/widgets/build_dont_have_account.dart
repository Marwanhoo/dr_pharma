import 'package:flutter_drpharma_2/core/app_export.dart';

Row buildDoNotHaveAccount(BuildContext context, String text , String sign, VoidCallback onPressed) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
       Text(
        text,
      ),
      GestureDetector(
        onTap: onPressed,
        child:  Text(
          sign,
          style: const TextStyle(
            color: Colors.red,
            decoration: TextDecoration.underline,
            decorationThickness: 2,
            decorationColor: Colors.red,
          ),
        ),
      ),
    ],
  );
}
