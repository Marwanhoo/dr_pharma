import '../../../../../Core/app_export.dart';

class BeautyToolsViewBody extends StatefulWidget {
  BeautyToolsViewBody({super.key});

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
      appBar: AppBar(
        title: Text("Beauty Tools", style: AppFonts.header2),
        centerTitle: true,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios)),
        iconTheme: const IconThemeData(size: 15, color: Colors.black),
      ),
      body: SingleChildScrollView(
          child: DefaultTabController(
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
            SizedBox(
              height: 400,
              child: TabBarView(children: [
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
                          BestOffersCard(
                              imagePath: "assets/images/medicineImage.png"),
                          BestOffersCard(
                              imagePath: "assets/images/medicineImage.png")
                        ],
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 10,
                      );
                    },
                    itemCount: 10,
                  ),
                ),
                const Text("data"),
                const Text("data"),
                const Text("data"),
              ]),
            ),
          ],
        ),
      )),
    );
  }
}
