import 'package:flutter_drpharma_2/core/app_export.dart';

void showBusinessSpecialization(BuildContext context) {
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: MediaQuery.of(context).size.height * 0.65,
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        child: Column(
          children: [
            Container(
              height: 8,
              margin: const EdgeInsets.symmetric(horizontal: 100),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Your business specialization",
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            GridView(
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
                oneItemBusinessSpecialization(
                    Icons.health_and_safety, "Pharmacy", true),
                oneItemBusinessSpecialization(Icons.local_hospital, "Clinic"),
                oneItemBusinessSpecialization(Icons.apartment, "Hospital"),
              ],
            ),
            const SizedBox(height: 65),
            CustomRow(
              text: "Continue",
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => const CreateAccountScreen()));
              },
            ),
          ],
        ),
      );
    },
  );
}
