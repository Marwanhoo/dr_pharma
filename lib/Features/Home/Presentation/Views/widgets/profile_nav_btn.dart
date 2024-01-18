import 'package:flutter_drpharma_2/core/app_export.dart';

class ProfileButton extends StatelessWidget {
  const ProfileButton({
    super.key,
    required this.text,
    required this.btnColor,
    this.textColor = Colors.white,
    this.height = 57,
    required this.borderColor,
  });
  final String text;
  final Color btnColor;
  final Color? textColor;
  final double? height;
  final Color borderColor;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 140,
        height: height,
        decoration: ShapeDecoration(
          color: btnColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(17.83),
            side: BorderSide(width: 1.94, color: borderColor),
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: AppFonts.tabBar.copyWith(
              color: textColor,
            ),
          ),
        ));
  }
}
