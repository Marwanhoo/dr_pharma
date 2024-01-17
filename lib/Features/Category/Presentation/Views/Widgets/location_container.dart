import 'package:flutter_drpharma_2/Core/app_export.dart';
import 'package:flutter_drpharma_2/Features/Category/Presentation/Views/Widgets/distance_container.dart';

class LocationContainer extends StatelessWidget {
  const LocationContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(AppImages.map),
        Stack(
          children: [
            Container(
              width: 362.93,
              height: 88.86,
              padding: EdgeInsets.all(10),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9.52),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F3C3C3C),
                    blurRadius: 11.64,
                    offset: Offset(-1.06, 4.23),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(AppImages.location),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Our Location',
                          style: AppFonts.small
                              .copyWith(color: AppColors.primary),
                        ),
                        Text(
                          'ebad alrhman ahmed , mansoura, egypt',
                          style: AppFonts.small
                              .copyWith(color: AppColors.black),
                          maxLines: 2,
                          softWrap: true,
                        ),
                      ],
                    ),
                    DistanceContainer()
                  ]),
            ),
          ],
        )
      ],
    );
  }
}
