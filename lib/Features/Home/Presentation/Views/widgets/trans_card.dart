import 'package:flutter_drpharma_2/core/app_export.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 368.45,
      height: 45.42,
      padding: const EdgeInsets.all(8),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7.23),
        ),
        shadows: const [AppFonts.boxShadow],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 165.96,
            height: 21.68,
            child: Text('Transaction History',
                style:
                    AppFonts.style14Urbn.copyWith(fontWeight: FontWeight.w900)),
          ),
          Row(
            children: [
              Text('view all',
                  style: AppFonts.small.copyWith(color: AppColors.black)),
              Icon(Icons.arrow_forward_ios, size: 12, color: AppColors.black)
            ],
          ),
        ],
      ),
    );
  }
}
