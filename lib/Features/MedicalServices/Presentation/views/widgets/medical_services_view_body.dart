import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/Config/routes/routeManager.dart';
import 'package:flutter_drpharma_2/Features/MedicalServices/Presentation/views/widgets/floating_container.dart';
import 'package:flutter_drpharma_2/core/app_export.dart';
import 'package:flutter_drpharma_2/core/constants/images.dart';
import 'package:flutter_drpharma_2/core/utils/widgets/default_appBar.dart';

class MedicalServicesViewBody extends StatelessWidget {
  const MedicalServicesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: const FloatingContainer(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      appBar: DefaultAppBar(pageTitle: 'Medical Services').build(context),
      body: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MedicalServiceContainer(
              imagePath: AppImages.m2,
            ),
            MedicalServiceContainer(
              imagePath: AppImages.m1,
            )
          ]),
    );
  }
}

class FloatingContainer extends StatelessWidget {
  const FloatingContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        RouteManager.moveTo('/addService');
      },
      child: Container(
        width: 210,
        height: 56,
        margin: const EdgeInsets.only(bottom: 60),
        decoration: ShapeDecoration(
          color: AppColors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(17.83),
          ),
          shadows: const [AppFonts.boxShadow],
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Text(
            'New Service',
            style: AppFonts.header2.copyWith(color: Colors.white),
          ),
          const Icon(
            Icons.arrow_forward,
            color: Colors.white,
          )
        ]),
      ),
    );
  }
}
