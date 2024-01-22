import 'package:flutter_drpharma_2/core/utils/widgets/bsProductsList.dart';
import 'package:flutter_drpharma_2/core/utils/widgets/default_appBar.dart';

import '../../../../../core/app_export.dart';
import '../../../../../core/constants/images.dart';

class BeautyToolsViewBody extends StatefulWidget {
  const BeautyToolsViewBody({super.key});

  @override
  State<BeautyToolsViewBody> createState() => _BeautyToolsViewBodyState();
}

class _BeautyToolsViewBodyState extends State<BeautyToolsViewBody> {
  final List<String> imagesUrl = [
    AppImages.beauty,
    AppImages.beauty,
    AppImages.beauty,
    AppImages.beauty,
    AppImages.beauty,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: DefaultAppBar(pageTitle: 'Beauty Tools').build(context),
      body: DefaultTabController(
        length: 4,
        child: Column(
          children: [
            CustomSmoothIndicator(
              isProfile: false,
              imagesUrl: imagesUrl,
              effect: const ExpandingDotsEffect(
                dotHeight: 5,
                dotWidth: 15,
                dotColor: Color.fromARGB(255, 203, 201, 201),
                activeDotColor: AppColors.primary,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TabBar(
              dividerColor: const Color(0xffB3B3B5),
              dividerHeight: .5,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 3,
              unselectedLabelColor: AppColors.hintColor,
              indicatorColor: AppColors.primary,
              tabs: [
                Text("all", style: AppFonts.tabBar.copyWith(fontSize: 14)),
                Text("makeup", style: AppFonts.tabBar.copyWith(fontSize: 14)),
                Text("skin care",
                    style: AppFonts.tabBar.copyWith(fontSize: 14)),
                Text("hair care",
                    style: AppFonts.tabBar.copyWith(fontSize: 14)),
              ],
            ),
            const Expanded(
              child: TabBarView(children: [
                ProductsList(),
                Text("data"),
                Text("data"),
                Text("data"),
              ]),
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
