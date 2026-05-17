import 'package:flutter_drpharma_2/core/app_export.dart';

class MyWalletView extends StatelessWidget {
  const MyWalletView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("My Wallet"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                        color: Colors.white,
                        width: double.infinity,
                        child: CustomPaint(
                          size: const Size(300,150)    ,
                          painter: CustomPaintWallet(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 35,
                              backgroundColor: Colors.transparent,
                              backgroundImage: AssetImage(AppImages.splashLogo),
                            ),
                            SizedBox(
                              width: context.screenWidth * 0.55,
                            ),
                            const Text("Doctor\nPharma",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const SizedBox(height: 40,),
                      Text("Your Balance",style: AppFonts.style16DmSans,),
                      Text("237.00 ",style: AppFonts.style23Pop700),
                    ],
                  ),
                ],
              ),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(10),
                  children: const [
                    SizedBox(
                      height: 10,
                    ),
                    TransactionCard(),
                    SizedBox(
                      height: 20,
                    ),
                    TransactionDetails(
                      iconPath: "assets/icons/greenTranss.svg",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TransactionDetails(
                      iconPath: "assets/icons/redTrans.svg",
                      color: AppColors.red,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TransactionDetails(
                      iconPath: "assets/icons/greenTranss.svg",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
