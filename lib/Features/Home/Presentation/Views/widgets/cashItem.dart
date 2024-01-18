// ignore_for_file: file_names

import 'package:flutter_drpharma_2/core/app_export.dart';

class CashItem extends StatelessWidget {
  const CashItem({
    super.key,
    required this.discount,
    required this.total,
  });
  final String discount;
  final String total;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: discount,
                    style: AppFonts.Timer.copyWith(fontSize: 30),
                  ),
                  WidgetSpan(
                    child: Transform.translate(
                      offset: const Offset(0.0, 4.0),
                      child: Text(
                        'EGP',
                        style: AppFonts.small.copyWith(
                          color: AppColors.softGrey,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        Text(total,
            style: AppFonts.medium.copyWith(
              color: AppColors.red,
            ))
      ],
    );
  }
}
