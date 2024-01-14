import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
            color: Color(0xFFDA3A2A),
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
