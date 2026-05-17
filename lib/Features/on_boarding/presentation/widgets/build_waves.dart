import 'package:flutter_drpharma_2/core/app_export.dart';

Stack buildWaves(index) {
  return Stack(
    alignment: Alignment.center,
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (index == 0)
            const SizedBox(
              height: 110,
            ),
          Image.asset(
            DataText.vector[index],
          ),
          if (index == 2)
            const SizedBox(
              height: 90,
            ),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            DataText.textVectorTitle[index],
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              DataText.textVectorBody[index],
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    ],
  );
}