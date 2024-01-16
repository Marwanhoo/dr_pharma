import 'package:flutter_drpharma_2/core/app_export.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.leadingIcon = "assets/icons/wHeart.svg",
    required this.isFlash,
  });
  final String title;
  final String leadingIcon;
  final bool isFlash;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                "assets/images/Group.png",
              ))),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: isFlash
              ? IsFlashRow(leadingIcon: leadingIcon, title: title)
              : isNotFLash(leadingIcon: leadingIcon, title: title),
        ),
      ),
    );
  }
}

class isNotFLash extends StatelessWidget {
  const isNotFLash({
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
            child: SvgPicture.asset(leadingIcon)),
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
