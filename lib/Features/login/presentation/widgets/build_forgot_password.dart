import 'package:flutter_drpharma_2/core/app_export.dart';

Widget buildForgotPassword(BuildContext context) {
  return Align(
    alignment: Alignment.centerRight,
    child: TextButton(
      onPressed: () {
        Navigator.pushNamed(
          GlobalKeyy.currentContext,
            '/forgot pass view',
        );
      },
      child: const Text(
        AppText.forgotPass,
        style: TextStyle(
          color: AppColors.primary,
        ),
      ),
    ),
  );
}
