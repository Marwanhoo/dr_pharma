import 'package:flutter/material.dart';
import 'package:flutter_drpharma_2/Core/app_export.dart';
import 'package:flutter_drpharma_2/Features/Home/Presentation/Views/widgets/profile_nav_btn.dart';
import 'package:flutter_drpharma_2/Features/MyOrder/Presentation/views/order_details_view.dart';

class MyOrderItem extends StatelessWidget {
  const MyOrderItem({super.key, required this.listviewIndex});
    final int listviewIndex;


  @override
  Widget build(BuildContext context) {
    String orderNum = 'Bill NO.23455-64327';
    String orderDate = 'ordered 20/11/2023';
    return Container(
      width: 364,
      height: 188,
      decoration: ShapeDecoration(
        color: AppColors.greyWithOpacity,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.55),
        ),
        shadows: const [AppFonts.boxShadow],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'On the way to you',
                    style: AppFonts.style14Pop500
                        .copyWith(color: AppColors.primary),
                  ),
                  Text(
                    '\$235,00',
                    style:
                        AppFonts.style16Pop700.copyWith(color: AppColors.red),
                  )
                ],
              ),
              Text(
                orderNum,
                style: AppFonts.style16Pop700,
              ),
              Text(
                orderDate,
                style: AppFonts.small.copyWith(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Payment status:',
                style: AppFonts.small.copyWith(color: const Color(0xff444750)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Payment when recieving',
                    style: AppFonts.medium,
                  ),
                  ProfileButton(
                    text: 'Details',
                    btnColor: AppColors.primary,
                    borderColor: AppColors.primary,
                    height: 35,
                    width: 70,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>  OrderDetailsView(
                                    orderNum: orderNum,
                                    orderDate: orderDate,
                                   listviewIndex:listviewIndex
                                  )));
                    },
                  )
                ],
              )
            ]),
      ),
    );
  }
}
