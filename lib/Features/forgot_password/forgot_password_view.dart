import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/Services/global_key.dart';
import 'package:flutter_drpharma_2/main.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forgot Password"),
      ),
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
