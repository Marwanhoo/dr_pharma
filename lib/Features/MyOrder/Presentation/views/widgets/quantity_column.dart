import 'package:flutter_drpharma_2/core/app_export.dart';

class QColumn extends StatelessWidget {
  const QColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Quantity',
          style: AppFonts.style14DmSans.copyWith(color: Colors.black),
        ),
        Text(
          '5',
          style: AppFonts.small.copyWith(color: AppColors.red),
        )
      ],
    );
  }
}