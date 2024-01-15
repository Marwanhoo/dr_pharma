import 'package:flutter_drpharma_2/core/helper.dart';

import '../../../../core/app_export.dart';
import '../../../../core/utils/widgets/CustomRow.dart';
import '../views/create_account_view.dart';

void showBusinessSpecialization(BuildContext context) {
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: context.screenHeight * 0.65,
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        child: Column(
          children: [
            buildLineGrey(),
            SizedBox(
              height: context.screenHeight / 50,
            ),
            const Text(
              "Your business specialization",
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: context.screenHeight / 50,
            ),
            buildGridViewBusiness(),
            const SizedBox(height: 65),
            CustomRow(
              text: "Continue",
              onPressed: () {
                Navigator.pushNamed(context, '/create account view');
              },
            ),
          ],
        ),
      );
    },
  );
}

GridView buildGridViewBusiness() {
  return GridView(
    physics: const NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      mainAxisExtent: 100,
    ),
    children: [
      oneItemBusinessSpecialization(Icons.science, "Lab"),
      oneItemBusinessSpecialization(Icons.health_and_safety, "Pharmacy", true),
      oneItemBusinessSpecialization(Icons.local_hospital, "Clinic"),
      oneItemBusinessSpecialization(Icons.apartment, "Hospital"),
    ],
  );
}

Container buildLineGrey() {
  return Container(
    height: 8,
    margin: const EdgeInsets.symmetric(horizontal: 100),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.grey,
    ),
  );
}

Widget oneItemBusinessSpecialization(IconData icon, String name, [bool shape = false]) {
  return Card(
    shape: (shape)
        ? RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(
              width: 1,
              color: Colors.red,
            ),
          )
        : null,
    color: Colors.white,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CircleAvatar(
          backgroundColor: const Color(0xFF566CA2),
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        Text(name),
      ],
    ),
  );
}
