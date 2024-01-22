import 'package:flutter_drpharma_2/core/app_export.dart';

class DiscFavRow extends StatelessWidget {
  const DiscFavRow( {
    super.key, required this.iconPath,
  });
  final String iconPath;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            width: 38.09,
            height: 19,
            decoration: ShapeDecoration(
              color: AppColors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child:  Text(
              '-15%',
              textAlign: TextAlign.center,
              style: AppFonts.style14Urbn.copyWith(color: Colors.white),
            )),
        SvgPicture.asset(iconPath)
      ],
    );
  }
}
