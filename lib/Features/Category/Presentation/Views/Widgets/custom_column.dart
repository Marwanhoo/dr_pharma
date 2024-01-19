import '../../../../../core/app_export.dart';
import '../../../../../core/constants/images.dart';

class CustomColumn extends StatelessWidget {
  const CustomColumn({
    super.key,
    required this.iconPath,
    required this.title,
    required this.subTitle,
  });
  final String iconPath;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Stack(
          children: [
            SvgPicture.asset(AppImages.circle),
            Positioned(top: 6, left: 9, child: SvgPicture.asset(iconPath)),
          ],
        ),
        Text(
          title,
          style: AppFonts.tabBar.copyWith(fontSize: 13),
        ),
        Text(
          subTitle,
          style: AppFonts.style14Pop500.copyWith(fontSize: 13, color: Colors.black),
        )
      ],
    );
  }
}
