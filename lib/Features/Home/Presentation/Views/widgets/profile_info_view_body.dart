import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/Core/constants/colors.dart';
import 'package:flutter_drpharma_2/Core/constants/styles.dart';
import 'package:flutter_drpharma_2/Core/helper.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/widgets/best_offers_card.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/widgets/custom_row.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/widgets/disc_fav_row.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/widgets/price_row.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProfileInfoViewBody extends StatefulWidget {
  const ProfileInfoViewBody({super.key});

  @override
  State<ProfileInfoViewBody> createState() => _ProfileInfoViewBodyState();
}

class _ProfileInfoViewBodyState extends State<ProfileInfoViewBody> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          width: double.infinity,
          height: 290,
          margin: const EdgeInsets.all(16.0),
          padding: const EdgeInsets.all(16),
          decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(28),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x3F868181),
                  blurRadius: 11.60,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                )
              ]),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  DiscFavRow(),
                  Image.asset("assets/images/bigMed.png"),
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(77, 116, 116, 116),
                        borderRadius: BorderRadius.circular(13)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SmoothPageIndicator(
                        controller: PageController(),
                        count: 4,
                        axisDirection: Axis.horizontal,
                        effect: const SlideEffect(
                            spacing: 3,
                            radius: 10.0,
                            dotWidth: 9.0,
                            dotHeight: 8.0,
                            paintStyle: PaintingStyle.stroke,
                            strokeWidth: 1.5,
                            dotColor: Colors.grey,
                            activeDotColor: Colors.indigo),
                      ),
                    ),
                  )
                ]),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const CustomCategoryWitharrow(
                text: "Panadol Advance",
                isProfile: true,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "From:Gsk Comapny",
                    style: AppFonts.Date.copyWith(color: AppColors.darkGrey),
                  ),
                  Text("(1045 Reviews)",
                      style: AppFonts.Date.copyWith(color: AppColors.darkGrey))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              const CounterRow(),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        counter--;
                      });
                    },
                    child: Container(
                      width: 101,
                      height: 47,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 2, color: AppColors.red),
                          borderRadius: BorderRadius.circular(18.37),
                        ),
                      ),
                      child: Image.asset("assets/images/minus.png"),
                    ),
                  ),
                  Text(
                    counter.toString(),
                    style: AppFonts.header2,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        counter++;
                      });
                    },
                    child: Container(
                      width: 101,
                      height: 47,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 2, color: AppColors.red),
                          borderRadius: BorderRadius.circular(18.37),
                        ),
                      ),
                      child: Image.asset("assets/images/plus.png"),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0, bottom: 30),
                child: Text(
                  "Also Available In :",
                  style: AppFonts.header2,
                ),
              ),
            ],
          ),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BestOffersCard(
              imagePath: "assets/images/medicineImage.png",
            ),
            BestOffersCard(
              imagePath: "assets/images/medicineImage.png",
            ),
          ],
        ),
      ],
    );
  }
}

class CounterRow extends StatelessWidget {
  const CounterRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        PriceRow(),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Color(0xffFFE177).withOpacity(.45)),
          child: Row(
            children: [
              SvgPicture.asset("assets/icons/dollar.svg"),
              Text(
                "Points    ",
                style: AppFonts.medium.copyWith(color: Color(0xffFCD240)),
              ),
              Text(
                "50",
                style: AppFonts.medium.copyWith(color: Color(0xffFCD240)),
              )
            ],
          ),
        )
      ],
    );
  }
}
