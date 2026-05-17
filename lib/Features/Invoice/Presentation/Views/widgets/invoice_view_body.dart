import 'package:flutter_drpharma_2/Services/global_key.dart';
import 'package:flutter_drpharma_2/core/app_export.dart';
import 'package:flutter_drpharma_2/Features/Category/Presentation/Views/Widgets/product_card.dart';
import 'package:flutter_drpharma_2/Features/Invoice/Presentation/Views/widgets/invoice_nav_bar.dart';

class InVoiceViewBody extends StatefulWidget {
  const InVoiceViewBody({super.key});

  @override
  State<InVoiceViewBody> createState() => _InVoiceViewBodyState();
}

class _InVoiceViewBodyState extends State<InVoiceViewBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:const CustomAppHeader().build(GlobalKeyy.currentContext),
        bottomNavigationBar: const InvoiceBottomNav(),
        backgroundColor: Colors.white,
        body: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            itemBuilder: (context, index) {
              return const ProductCard(
                pageName: 'cart',
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 20,
              );
            },
            itemCount: 20),
      ),
    );
  }
}

class InvoiceBottomNav extends StatelessWidget {
  const InvoiceBottomNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        height: 160,
        width: double.infinity,
        decoration: ShapeDecoration(
          color: const Color(0xFFFAFBFA),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          shadows: const [AppFonts.boxShadow],
        ),
        child: const InvoiceNavBar());
  }
}
