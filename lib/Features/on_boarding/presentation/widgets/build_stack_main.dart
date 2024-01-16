import 'package:flutter_drpharma_2/core/app_export.dart';

class BuildStackMain extends StatelessWidget {
  const BuildStackMain({
    super.key, required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(DataText.imagesBackground[index]),
              fit: BoxFit.fill,
            ),
          ),
          // child: buildStack(context, pageController),
        ),
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/shadow.png"),
              fit: BoxFit.fill,
            ),
          ),
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
                Text(
                  DataText.textVectorBody[index],
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
}