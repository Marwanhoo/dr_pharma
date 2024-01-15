import 'package:flutter_drpharma_2/core/app_export.dart';

void showRegion(BuildContext context) {
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: MediaQuery.of(context).size.height * 0.75,
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
              "Your Region",
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(16),
                ),
                filled: true,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: TextButton.icon(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.red,
                ),
                onPressed: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (_) => const MapScreen(),
                  //   ),
                  // );
                },
                icon: const Text(
                  "Show On Map",
                ),
                label: const Icon(Icons.location_pin),
              ),
            ),
            const ListTile(
              title: Text("alsharqa 34"),
              subtitle: Text("Ahmed Maher Street,Mansoura"),
              trailing: Text("568 km"),
              isThreeLine: true,
            ),
            const DottedLine(
              lineLength: double.infinity,
              lineThickness: 1.0,
              dashLength: 8.0,
              dashColor: Colors.grey,
            )
          ],
        ),
      );
    },
  );
}