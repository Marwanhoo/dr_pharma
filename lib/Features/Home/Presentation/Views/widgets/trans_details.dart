import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/Core/constants/colors.dart';
import 'package:flutter_drpharma_2/Core/constants/styles.dart';
import 'package:flutter_svg/svg.dart';

class TransactionDetails extends StatelessWidget {
  const TransactionDetails({
    super.key,
    required this.iconPath,
    this.color = const Color(0xFF4BBC71),
  });

  final String iconPath;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 368.45,
      height: 93.94,
      padding: EdgeInsets.all(8),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7.23),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x3F808080),
            blurRadius: 10.32,
            offset: Offset(0, 4.13),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(iconPath),
          title: Text(
            "1000 gift points were obtained on your latest bill",
            style: AppFonts.medium,
          ),
          subtitle: Text(
            "30 may 2023 - 6:55 PM",
            style: AppFonts.small.copyWith(color: AppColors.softGrey),
          ),
          trailing: Text(
            "+1000 \n point",
            style: AppFonts.medium.copyWith(color: color),
          ),
        ),
      ),
    );
  }
}