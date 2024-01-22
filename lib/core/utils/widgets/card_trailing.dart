import 'package:flutter_drpharma_2/Features/Category/Presentation/Views/Widgets/is_our_product_card.dart';
import 'package:flutter_drpharma_2/Features/Invoice/Presentation/Views/widgets/is_invoice_card.dart';
import 'package:flutter_drpharma_2/Features/MyOrder/Presentation/views/widgets/quantity_column.dart';
import 'package:flutter_drpharma_2/core/app_export.dart';

Widget TrailingWidget(String PageName) {
  if (PageName == 'cart') {
    return const IsInvoice();
  }
  if (PageName == 'ourProducts') {
    return const IsOurProductsCard();
  }

  if (PageName == 'order') {
    return const QColumn();
  }

  return const Text('data');
}

