import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/widgets/profile_nav_btn.dart';
import 'package:flutter_drpharma_2/core/constants/colors.dart';
import 'package:flutter_drpharma_2/core/constants/styles.dart';
import 'package:flutter_drpharma_2/core/utils/widgets/default_appBar.dart';

import '../../../../../core/utils/widgets/search_field.dart';

class ReturnRequest extends StatelessWidget {
  const ReturnRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar:const Padding(
        padding:  EdgeInsets.all(16.0),
        child:  ProfileButton(
          text: 'Send',
          btnColor: AppColors.primary,
          borderColor: AppColors.primary,
          width: 80,
        ),
      ),
      appBar: DefaultAppBar(pageTitle: 'Return Request').build(context),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: 367,
          height: 55.05,
          decoration: ShapeDecoration(
            color: AppColors.semiWhite,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.55),
            ),
            shadows: const [AppFonts.boxShadow],
          ),
          child: const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: SerachTextField(
              hint: 'please enter a service name',
              isService: true,
            ),
          ),
        ),
      ),
    );
  }
}