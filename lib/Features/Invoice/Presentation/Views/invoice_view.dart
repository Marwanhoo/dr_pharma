import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/Features/Invoice/Presentation/Views/widgets/invoice_view_body.dart';

class InVoiceView extends StatefulWidget {
  const InVoiceView({super.key});

  @override
  State<InVoiceView> createState() => _InVoiceViewState();
}

class _InVoiceViewState extends State<InVoiceView> {
  @override
  Widget build(BuildContext context) {
    return const InVoiceViewBody();
  }
}