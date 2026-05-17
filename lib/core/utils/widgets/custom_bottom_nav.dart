import 'package:flutter_drpharma_2/Core/app_export.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/widgets/profile_nav_btn.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({
    super.key,
    required this.btnText1,
    required this.btnText2,
    required this.btnC1,
    required this.btn2,
    this.textColor = Colors.white,
    this.height,
    required this.btn1BorderC,
    required this.btn2BorderC,
    this.onTap,
  });
  final String btnText1;
  final String btnText2;
  final Color btnC1;
  final Color btn2;
  final Color textColor;
  final double? height;
  final Color btn1BorderC;
  final Color btn2BorderC;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ProfileButton(
            text: btnText1,
            btnColor: btnC1,
            textColor: textColor,
            height: height,
            borderColor: btn1BorderC,
            width: 140,
          ),
          GestureDetector(
            onTap: onTap,
            child: ProfileButton(
              width: 140,
              text: btnText2,
              btnColor: btn2,
              height: height,
              borderColor: btn2BorderC,
            ),
          )
        ],
      ),
    );
  }
}
