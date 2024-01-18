import 'package:flutter_drpharma_2/core/app_export.dart';

class CreditLimitWidget extends StatelessWidget {
  const CreditLimitWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: context.screenHeight / 7,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        color: AppColors.primary.withOpacity(0.8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Your credit limit :",style: AppFonts.style16DmSans,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text("237.00 ",style: AppFonts.style23Pop700),
                Text("EGP",style: AppFonts.style16DmSans),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
