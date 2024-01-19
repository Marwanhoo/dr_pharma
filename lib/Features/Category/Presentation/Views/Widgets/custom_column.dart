import '../../../../../core/app_export.dart';
import '../../../../../core/constants/images.dart';

class CustomColumn extends StatelessWidget {
  const CustomColumn({
    super.key,
    required this.iconPath,
    required this.title,
    required this.subTitle,
    required this.isMenu,
  });
  final String iconPath;
  final String title;
  final String? subTitle;
  final bool isMenu;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CircleAvatar(
          backgroundColor: AppColors.primary,
          radius: 22,
          child: SvgPicture.asset(iconPath),
        ),
        isMenu
            ? Text(title, style: AppFonts.style14Urbn)
            : Text(
                title,
                style: AppFonts.tabBar.copyWith(fontSize: 13),
              ),
        Text(
          subTitle!,
          style: AppFonts.style14Pop500
              .copyWith(fontSize: 13, color: Colors.black),
        )
      ],
    );
  }
}
