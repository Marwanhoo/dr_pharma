import 'package:flutter/material.dart';

import '../../../../../core/constants/colors.dart';

class RefundButton extends StatelessWidget {
  const RefundButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 166.01,
      height: 45.63,
      decoration: ShapeDecoration(
        color: AppColors.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(17.83),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x99BBC3CE),
            blurRadius: 13.37,
            offset: Offset(4.46, 4.46),
            spreadRadius: 0,
          ),
          BoxShadow(
            color: Color(0xCCFDFFFF),
            blurRadius: 13.37,
            offset: Offset(-4.46, -4.46),
            spreadRadius: 0,
          )
        ],
      ),
      child: const Center(
        child: Text(
          'Refund',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
