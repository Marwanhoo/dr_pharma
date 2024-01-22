import 'package:flutter_drpharma_2/Features/Category/Presentation/Views/Widgets/product_card.dart';
import 'package:flutter_drpharma_2/core/app_export.dart';

class ProductsListView extends StatelessWidget {
  const ProductsListView({
    super.key, required this.pageName,
  });
  final String pageName;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return itembuilder();
        },
        separatorBuilder: (context, index) {
          return separator() ;
        },
        itemCount: 10);
  }

  Padding itembuilder() {
    return Padding(
          padding:const EdgeInsets.symmetric(horizontal: 15.0),
          child: ProductCard(
            pageName: pageName,
          ),
        );
  }

  SizedBox separator() {
    return const SizedBox(
          height: 20,
        );
  }
}
