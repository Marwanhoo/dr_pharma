import 'package:flutter_drpharma_2/core/app_export.dart';

Widget buildOneItem(index) {
  return Stack(
    alignment: Alignment.center,
    children: [
      Image(
        width: double.infinity,
        fit: BoxFit.fitWidth,
        image: AssetImage(FakeData.imagesBackground[index]),
      ),
      const Image(
        width: double.infinity,
        fit: BoxFit.fitWidth,
        image: AssetImage("assets/images/shadow.png"),
      ),
      Stack(
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
                FakeData.vector[index],
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
                FakeData.textVectorTitle[index],
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                FakeData.textVectorBody[index],
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
