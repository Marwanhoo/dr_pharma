import 'package:flutter_drpharma_2/Features/MyOrder/Presentation/views/widgets/my_order_item.dart';
import 'package:flutter_drpharma_2/core/app_export.dart';

class MyOrderListView extends StatelessWidget {
  const MyOrderListView({
    super.key,
    required this.itemCount, required this.listviewIndex,
  });
  final int itemCount;
  final int listviewIndex;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: const EdgeInsets.only(right: 20,left: 20,bottom: 50),
        itemBuilder: (BuildContext context, int index) {
          return  MyOrderItem(listviewIndex: listviewIndex,);
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            height: 20,
          );
        },
        itemCount: itemCount);
  }
}
