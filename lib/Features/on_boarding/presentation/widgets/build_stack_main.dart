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
        buildImageBackground(index),
        buildShadow(),
        buildWaves(index),
      ],
    );
  }


}