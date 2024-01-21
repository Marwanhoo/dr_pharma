import 'package:flutter_drpharma_2/core/app_export.dart';

class TotalPriceRow extends StatelessWidget {
  const TotalPriceRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Total",
          style: AppFonts.Timer.copyWith(fontSize: 16),
        ),
        Text(
          ('30.50\$'),
          style: AppFonts.Timer.copyWith(fontSize: 16),
        )
      ],
    );
  }
}
