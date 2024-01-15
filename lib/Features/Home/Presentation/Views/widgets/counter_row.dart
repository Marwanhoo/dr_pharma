import 'package:flutter_drpharma_2/Core/app_export.dart';

class CounterRow extends StatelessWidget {
  const CounterRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        PriceRow(),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Color(0xffFFE177).withOpacity(.45)),
          child: Row(
            children: [
              SvgPicture.asset("assets/icons/dollar.svg"),
              Text(
                "Points    ",
                style: AppFonts.medium.copyWith(color: Color(0xffFCD240)),
              ),
              Text(
                "50",
                style: AppFonts.medium.copyWith(color: Color(0xffFCD240)),
              )
            ],
          ),
        )
      ],
    );
  }
}
