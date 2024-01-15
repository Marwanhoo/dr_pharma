import 'package:flutter_drpharma_2/core/app_export.dart';

Widget oneItemBusinessSpecialization(IconData icon, String name,
    [bool shape = false]) {
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