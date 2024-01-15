import 'package:flutter_drpharma_2/core/app_export.dart';

Widget buildForgotPassword(BuildContext context) {
  return Align(
    alignment: Alignment.centerRight,
    child: TextButton(
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (_)=> const ForgotPasswordScreen()));
      },
      child: const Text(
        "Forgot Password",
        style: TextStyle(
          color: Color(0XFF347A6A),
        ),
      ),
    ),
  );
}
