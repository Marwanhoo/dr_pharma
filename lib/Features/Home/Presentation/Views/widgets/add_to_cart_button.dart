import 'package:flutter_drpharma_2/core/app_export.dart';

class AddToCartBtn extends StatelessWidget {
  const AddToCartBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 133,
      height: 35,
      decoration: ShapeDecoration(
        color: AppColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(33),
        ),
      ),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Add to cart',
            textAlign: TextAlign.center,
            style: AppFonts.style14Urbn.copyWith(color: Colors.white),
          ),
        const  Icon(
            Icons.shopping_cart,
            color: Colors.white,
            size: 15,
          )
        ],
      ),
    );
  }
}
