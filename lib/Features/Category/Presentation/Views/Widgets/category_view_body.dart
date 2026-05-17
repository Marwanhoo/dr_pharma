import 'package:flutter_drpharma_2/Features/Category/Presentation/Views/Widgets/brands_tab_view.dart';
import 'package:flutter_drpharma_2/Services/global_key.dart';

import '../../../../../core/app_export.dart';

class CategoryViewBody extends StatelessWidget {
  const CategoryViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppHeader().build(GlobalKeyy.currentContext),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
          child: DefaultTabController(
            length: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SerachTextField(hint: "Search Here...",isService: false,),
                SizedBox(
                  height: context.screenHeight * .1 - 60,
                ),
                TabBar(
                  indicatorPadding: const EdgeInsetsDirectional.all(-10),
                  automaticIndicatorColorAdjustment: false,
                  dividerColor: Colors.transparent,
                  indicatorWeight: 4,
                  tabs: [
                    Text("Category", style: AppFonts.tabBar),
                    Text("Brands", style: AppFonts.tabBar),
                  ],
                ),
                SizedBox(
                  height: context.screenHeight * .1 - 30,
                ),
                Expanded(
                  child: TabBarView(children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const CategoryRow(),
                        SizedBox(
                          height: context.screenHeight * .1 - 30,
                        ),
                        const CategoryRow(),
                      ],
                    ),
                    const BrandsTabView()
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
