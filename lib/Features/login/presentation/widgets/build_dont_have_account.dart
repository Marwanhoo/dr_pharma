import '../../../../core/app_export.dart';
import '../../../signup/presentation/views/signup_view.dart';

Row buildDontHaveAccount(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text(
        "you don’t have account ? ",
      ),
      InkWell(
        borderRadius: BorderRadius.circular(2),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => const SignUpScreen(),
            ),
          );
        },
        child: const Text(
          "sign up",
          style: TextStyle(
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
