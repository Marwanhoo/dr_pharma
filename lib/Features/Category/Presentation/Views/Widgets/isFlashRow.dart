import 'package:flutter_drpharma_2/core/app_export.dart';

class IsFlashRow extends StatelessWidget {
  const IsFlashRow({
    super.key,
    required this.leadingIcon,
    required this.title,
  });

  final String leadingIcon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(leadingIcon),
        Text(
          title,
          style: AppFonts.style14Urbn.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: 18.30,
              fontFamily: 'Poppins',
              color: Colors.white),
        ),
        GestureDetector(
            onTap: () {
              PersistentNavBarNavigator.pushNewScreen(context,
                  screen: SearchView(), withNavBar: false);
            },
            child: SvgPicture.asset("assets/icons/search.svg"))
      ],
    );
  }
}
