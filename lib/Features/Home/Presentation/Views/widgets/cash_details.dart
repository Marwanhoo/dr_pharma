
import 'package:flutter_drpharma_2/Core/app_export.dart';

class CashesDetails extends StatelessWidget {
  const CashesDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 402,
      height: 297,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(9.29),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x21000000),
            blurRadius: 14.40,
            offset: Offset(-1.03, 4.13),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CashItem(
                  discount: "20",
                  total: "1000",
                ),
                CashItem(
                  discount: "100",
                  total: "2500",
                ),
                CashItem(
                  discount: "200",
                  total: "3000",
                ),
                CashItem(
                  discount: "+",
                  total: "5000",
                )
              ],
            ),
            const ProgressIndicatorr(),
            Column(
              children: [
                Text(
                  "You Have : 2700 Point",
                  style: AppFonts.Timer.copyWith(fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "You Can Convert your Points To : ",
                      style: AppFonts.Timer.copyWith(
                          fontWeight: FontWeight.w700, fontSize: 14),
                    ),
                    Text(
                      "200 EGP",
                      style: AppFonts.Timer.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          color: AppColors.red),
                    )
                  ],
                ),
              ],
            ),
            const RefundButton(),
          ]),
    );
  }
}
