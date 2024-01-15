

import 'package:flutter_drpharma_2/Core/app_export.dart';


import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/styles.dart';

class ProgressIndicatorr extends StatelessWidget {
  const ProgressIndicatorr({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          const SizedBox(
            width: 360,
            child: StepProgressIndicator(
              totalSteps: 80,
              currentStep: 40,
              size: 20,
              padding: 0,
              roundedEdges: Radius.circular(10),
              selectedGradientColor: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xffDA3A2A), Color(0xff566CA2)],
              ),
              unselectedGradientColor: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [AppColors.greyBG, AppColors.greyBG],
              ),
            ),
          ),
          Positioned(
            left: 85,
            child: Row(
              children: [
                Text(
                  "2700 point     ",
                  style: AppFonts.small.copyWith(fontWeight: FontWeight.w900),
                ),
                CircleAvatar(
                  radius: 8,
                  backgroundColor: Colors.white,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
