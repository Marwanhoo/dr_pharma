import 'package:flutter_drpharma_2/core/app_export.dart';

class CustomListTitleWidget extends StatelessWidget {
  const CustomListTitleWidget({
    super.key,
    required this.title,
    this.subtitle,
    this.icon,
    required this.onTap,
    required this.iconLeading,
  });

  final IconData iconLeading;
  final String title;
  final String? subtitle;
  final IconData? icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: AppColors.primary.withOpacity(0.3),
          child: Icon(iconLeading,color: AppColors.primary,),
        ),
        title: Text(
          title,
          style: AppFonts.style16Pop500,
        ),
        subtitle: subtitle != null ? Text(subtitle!,style: AppFonts.style12DmSans,) : null,
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.grey,
        ),
      ),
    );
  }
}
