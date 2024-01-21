import 'package:flutter_drpharma_2/core/app_export.dart';

class OrdersStateColumn extends StatelessWidget {
  const OrdersStateColumn({
    super.key,
    required this.state,
    required this.stateColor,
  });
  final String state;
  final Color stateColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 70.17,
            height: 8.61,
            decoration: BoxDecoration(
                color: stateColor, borderRadius: BorderRadius.circular(16)),
          ),
          Text(
            state,
            style: AppFonts.style9Pop500.copyWith(color: stateColor),
          )
        ],
      ),
    );
  }
}
