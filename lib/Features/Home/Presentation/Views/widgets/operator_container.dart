import 'package:flutter_drpharma_2/Core/app_export.dart';

class OperatorContainer extends StatelessWidget {
  const OperatorContainer({
    super.key,
    required this.imagePath,
    required this.isInvoice,
    this.operator,
  });
  final String imagePath;
  final bool isInvoice;
  final String? operator;
  @override
  Widget build(BuildContext context) {
    return isInvoice
        ? Container(
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
                style: AppFonts.small.copyWith(
                    color: AppColors.red, fontWeight: FontWeight.w900),
              ),
            ),
          )
        : Container(
            width: 101,
            height: 47,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 2, color: AppColors.red),
                borderRadius: BorderRadius.circular(18.37),
              ),
            ),
            child: Image.asset(imagePath),
          );
  }
}
