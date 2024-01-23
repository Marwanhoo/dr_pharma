import 'package:flutter_drpharma_2/core/app_export.dart';


class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(pageTitle: "Forgot Password").build(GlobalKeyy.currentContext),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Forgot Pasword View",style: Theme.of(GlobalKeyy.currentContext).textTheme.headlineLarge,)
          ],
        ),
      ),
    );
  }
}
