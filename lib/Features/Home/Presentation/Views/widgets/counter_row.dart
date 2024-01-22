import 'package:flutter_drpharma_2/core/app_export.dart';
import 'package:flutter_drpharma_2/core/constants/images.dart';

class CounterRow extends StatelessWidget {
  const CounterRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const PriceRow(),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(6), color: const Color(0xffFFE177).withOpacity(.45)),
          child: Row(
            children: [
              SvgPicture.asset(AppImages.dollar),
              Text(
                "Points    ",
                style: AppFonts.medium.copyWith(color: const Color(0xffFCD240)),
              ),
              Text(
                "50",
                style: AppFonts.medium.copyWith(color: const Color(0xffFCD240)),
              )
            ],
          ),
        )
      ],
    );
  }
}
