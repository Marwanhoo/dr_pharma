import '../../../../../core/app_export.dart';

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
        color: Color(0xFF566CA2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(33),
        ),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Add to cart',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontFamily: 'Urbanist',
              fontWeight: FontWeight.w700,
            ),
          ),
          Icon(
            Icons.shopping_cart,
            color: Colors.white,
            size: 15,
          )
        ],
      ),
    );
  }
}
