import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 368.45,
      height: 45.42,
      padding: const EdgeInsets.all(8),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7.23),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x3F808080),
            blurRadius: 10.32,
            offset: Offset(0, 4.13),
            spreadRadius: 0,
          ),
        ],
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 165.96,
            height: 21.68,
            child: Text(
              'Transaction History',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14.45,
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
          ),
          Row(
            children: [
              Text(
                'view all',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              Icon(Icons.arrow_forward_ios, size: 12)
            ],
          ),
        ],
      ),
    );
  }
}
