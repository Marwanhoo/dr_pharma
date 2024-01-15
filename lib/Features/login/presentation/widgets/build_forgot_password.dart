import '../../../../core/app_export.dart';
import '../../../forgot_password/forgot_password_screen.dart';

Widget buildForgotPassword(BuildContext context) {
  return Align(
    alignment: Alignment.centerRight,
    child: TextButton(
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (_) => const ForgotPasswordScreen()));
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
