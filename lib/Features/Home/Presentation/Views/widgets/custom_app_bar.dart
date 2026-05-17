
import 'package:flutter_drpharma_2/Features/Category/Presentation/Views/Widgets/is_not_flash.dart';
import 'package:flutter_drpharma_2/Features/Category/Presentation/Views/Widgets/isFlashRow.dart';

import 'package:flutter_drpharma_2/core/app_export.dart';
import 'package:flutter_drpharma_2/core/constants/images.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.leadingIcon = "assets/icons/wHeart.svg",
    required this.isFlash,
  });
  final String title;
  final String leadingIcon;
  final bool isFlash;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
               AppImages.group,
              ))),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: isFlash
              ? IsFlashRow(leadingIcon: leadingIcon, title: title)
              : IsNotFLash(leadingIcon: leadingIcon, title: title),
        ),
      ),
    );
  }
}

