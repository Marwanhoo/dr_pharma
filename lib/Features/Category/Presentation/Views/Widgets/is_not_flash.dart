import 'package:flutter_drpharma_2/core/app_export.dart';

class IsNotFLash extends StatelessWidget {
  const IsNotFLash({
    super.key,
    required this.leadingIcon,
    required this.title,
  });

  final String leadingIcon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: SvgPicture.asset(
              leadingIcon,
              width: 10,
            )),
        Spacer(),
        Text(
          title,
          style: AppFonts.style14Urbn.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: 18.30,
              fontFamily: 'Poppins',
              color: Colors.white),
        ),
        Spacer()
      ],
    );
  }
}
