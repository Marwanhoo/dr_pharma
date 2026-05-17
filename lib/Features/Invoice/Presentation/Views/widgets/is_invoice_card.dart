import 'package:flutter_drpharma_2/Core/app_export.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/widgets/operator_container.dart';
import 'package:flutter_drpharma_2/core/constants/images.dart';

class IsInvoice extends StatefulWidget {
  const IsInvoice({
    super.key,
  });

  @override
  State<IsInvoice> createState() => _IsInvoiceState();
}

class _IsInvoiceState extends State<IsInvoice> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              counter--;
            });
          },
          child: const OperatorContainer(
            imagePath: AppImages.minus,
            isInvoice: true,
            operator: '-',
          ),
        ),
        Text(
          counter.toString(),
          style: AppFonts.small
              .copyWith(color: Colors.black, fontWeight: FontWeight.w900),
        ),
        GestureDetector(
            onTap: () {
              setState(() {
                counter++;
              });
            },
            child: const OperatorContainer(
              imagePath: AppImages.plus,
              isInvoice: true,
              operator: "+",
            ))
      ],
    );
  }
}
