import 'package:flutter_drpharma_2/core/app_export.dart';


Widget buildElevatedButton(
  BuildContext context,
  VoidCallback onPressed,
  String text,
  Color backgroundColor, [
  Color? textColor,
]) {
  return Container(
    width: double.infinity,
    height: context.screenHeight / 14, //50,
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: textColor != null ? const BorderSide(color: Colors.white) : BorderSide.none,
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: textColor ?? Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    ),
  );
}
