import 'package:flutter_drpharma_2/Core/app_export.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/widgets/prod_operator.dart';
import 'package:flutter_drpharma_2/Features/Invoice/Presentation/Views/widgets/invoice_operator.dart';

class OperatorContainer extends StatelessWidget {
  const OperatorContainer({
    super.key,
    required this.imagePath,
    required this.isInvoice,
    this.operator,
  });
  final String imagePath;
  final bool isInvoice;
  final String? operator;
  @override
  Widget build(BuildContext context) {
    return isInvoice
        ? InvoiceOperatorContainer(operator: operator)
        : ProductInfoOperatorContainer(imagePath: imagePath);
  }
}

