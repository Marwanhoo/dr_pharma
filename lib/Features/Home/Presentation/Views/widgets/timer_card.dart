import 'package:flutter_drpharma_2/core/app_export.dart';

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
        shadows: const [AppFonts.boxShadow],
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("There is Time Left",
                style: AppFonts.Timer.copyWith(fontSize: 16)),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "01",
                      style: AppFonts.Timer,
                    ),
                    Text(":", style: AppFonts.dots),
                    Text(
                      "40",
                      style: AppFonts.Timer,
                    ),
                    Text(":", style: AppFonts.dots),
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
                      style: AppFonts.style14Pop500,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Minute",
                      style: AppFonts.style14Pop500,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Second",
                      style: AppFonts.style14Pop500,
                    ),
                  ],
                ),
              ],
            ),
          ]),
    );
  }
}
