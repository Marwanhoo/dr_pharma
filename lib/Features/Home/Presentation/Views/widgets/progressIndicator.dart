// ignore_for_file: file_names

import 'package:flutter_drpharma_2/core/app_export.dart';

class ProgressIndicatorr extends StatefulWidget {
  const ProgressIndicatorr({
    super.key,
  });

  @override
  State<ProgressIndicatorr> createState() => _ProgressIndicatorrState();
}

class _ProgressIndicatorrState extends State<ProgressIndicatorr> {
  int currentStep = 45;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          SizedBox(
            width: 360,
            child: StepProgressIndicator(
              onTap: (v) {
                return () {
                  setState(() {
                    currentStep = v;
                  });
                };
              },
              totalSteps: 80,
              currentStep: currentStep,
              size: 20,
              padding: 0,
              roundedEdges: const Radius.circular(10),
              selectedGradientColor: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [AppColors.red, AppColors.primary],
              ),
              unselectedGradientColor: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [AppColors.greyBG, AppColors.greyBG],
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
