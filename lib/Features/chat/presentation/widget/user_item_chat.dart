import 'package:flutter_drpharma_2/core/app_export.dart';

class UserItemChat extends StatelessWidget {

  const UserItemChat({super.key, required this.message});
  final String message;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 10.0,
            ),
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadiusDirectional.only(
                bottomEnd: Radius.circular(
                  50,
                ),
                bottomStart: Radius.circular(
                  50,
                ),
                topStart: Radius.circular(
                  50,
                ),
              ),
            ),
            child: Text(
              message,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
