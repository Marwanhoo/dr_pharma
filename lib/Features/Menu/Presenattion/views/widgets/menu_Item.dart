import 'package:flutter_drpharma_2/Features/Category/Presentation/Views/Widgets/custom_column.dart';
import 'package:flutter_drpharma_2/core/app_export.dart';

class MenuItem extends StatelessWidget {
  const MenuItem(
      {super.key, required this.iconPath, required this.title, this.subTitle,  this.onTap});
  final String iconPath;
  final String title;
  final String? subTitle;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 150,
        height: 90,
        decoration: ShapeDecoration(
          color: AppColors.grey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14.10),
          ),
          shadows: const [AppFonts.boxShadow],
        ),
        child: CustomColumn(
          iconPath: iconPath,
          title: title,
          subTitle: subTitle ?? '',
          isMenu: true,
        ),
      ),
    );
  }
}
