import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/widgets/operator_container.dart';
import 'package:flutter_drpharma_2/core/app_export.dart';

import '../../../../../core/constants/images.dart';

class ProfileInfoViewBody extends StatefulWidget {
  const ProfileInfoViewBody({super.key});

  @override
  State<ProfileInfoViewBody> createState() => _ProfileInfoViewBodyState();
}

class _ProfileInfoViewBodyState extends State<ProfileInfoViewBody> {
  int counter = 0;

  List<String> imagesUrl = [
    AppImages.med,
    AppImages.med,
    AppImages.med,
    AppImages.med,
    AppImages.med,
  ];

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
              shadows: const [AppFonts.boxShadow]),
          child: Column(children: [
            const DiscFavRow(),
            CustomSmoothIndicator(
              isProfile: true,
              imagesUrl: imagesUrl,
              effect: const WormEffect(
                  dotHeight: 8,
                  dotWidth: 8,
                  dotColor: Color.fromARGB(255, 203, 201, 201),
                  activeDotColor: Colors.white),
            )
          ]),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
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
                    style: AppFonts.style14Pop500.copyWith(color: AppColors.darkGrey),
                  ),
                  Text("(1045 Reviews)", style: AppFonts.style14Pop500.copyWith(color: AppColors.darkGrey))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const CounterRow(),
              const SizedBox(
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
                    child: const OperatorContainer(
                      imagePath: AppImages.minus,
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
                      child: const OperatorContainer(
                        imagePath: AppImages.plus,
                      ))
                ],
              ),
              const SizedBox(
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
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(
              vertical: 16,
            ),
            itemBuilder: (BuildContext context, int index) {
              return const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BestOffersCard(imagePath: "assets/images/medicineImage.png"),
                  BestOffersCard(imagePath: "assets/images/medicineImage.png")
                ],
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                height: 10,
              );
            },
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}
