import 'package:flutter_drpharma_2/core/app_export.dart';

class DiscFavRow extends StatelessWidget {
  const DiscFavRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 38.09,
          height: 19,
          decoration: ShapeDecoration(
            color: const Color(0xFFDA3A2A),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: const Text(
            '-15%',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Urbanist',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        SvgPicture.asset("assets/icons/heart.svg")
      ],
    );
  }
}
