import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/Core/constants/styles.dart';

class TimerCard extends StatelessWidget {
  const TimerCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 346,
      height: 109,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.13),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x51868181),
            blurRadius: 11.60,
            offset: Offset(0, 4),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "There is Time Left",
              style: TextStyle(
                color: Color(0xFF566CA2),
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "01",
                      style: AppFonts.Timer,
                    ),
                    Text(
                      ":",
                      style: TextStyle(
                        color: Color(0xFF566CA2),
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    Text(
                      "40",
                      style: AppFonts.Timer,
                    ),
                    Text(
                      ":",
                      style: TextStyle(
                        color: Color(0xFF566CA2),
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    Text(
                      "32",
                      style: AppFonts.Timer,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Hours",
                      style: AppFonts.Date,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Minute",
                      style: AppFonts.Date,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Second",
                      style: AppFonts.Date,
                    ),
                  ],
                ),
              ],
            ),
          ]),
    );
  }
}
