import 'package:flutter_drpharma_2/Core/app_export.dart';

class DistanceContainer extends StatelessWidget {
  const DistanceContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: 20.0, horizontal: 5),
      child: Container(
          width: 42,
          height: 20.50,
          decoration: ShapeDecoration(
            color: AppColors.red,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.23),
            ),
          ),
          child: Text(
            ' 30 Km ',
            style: AppFonts.small,
          )),
    );
  }
}
