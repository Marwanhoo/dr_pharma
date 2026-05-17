import 'package:flutter_drpharma_2/core/app_export.dart';

class RemainingUploadsContainer extends StatelessWidget {
  const RemainingUploadsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 247,
      height: 101,
      margin:const EdgeInsets.only(top:20 ),
      decoration: ShapeDecoration(
        color: AppColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28),
        ),
        shadows: const [AppFonts.boxShadow],
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Remaining Uploads',
              style: AppFonts.header2.copyWith(color: Colors.white),
            ),
            Text(
              '40',
              style: AppFonts.header2.copyWith(color: Colors.white),
            )
          ]),
    );
  }
}

