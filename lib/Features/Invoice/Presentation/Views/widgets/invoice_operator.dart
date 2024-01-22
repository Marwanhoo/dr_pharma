import 'package:flutter_drpharma_2/core/app_export.dart';

class InvoiceOperatorContainer extends StatelessWidget {
  const InvoiceOperatorContainer({
    super.key,
    required this.operator,
  });

  final String? operator;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 29.66,
      height: 21.01,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 0.94, color: AppColors.red),
          borderRadius: BorderRadius.circular(8.62),
        ),
      ),
      child: Center(
        child: Text(
          operator!,
          style: AppFonts.small
              .copyWith(color: AppColors.red, fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
