import 'package:flutter_drpharma_2/core/app_export.dart';

class ProfileInfoWidget extends StatelessWidget {
  const ProfileInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return clickableCard();
  }

  Widget clickableCard() {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
            GlobalKeyy.currentContext, '/profile info edit view');
      },
      child: infoCard(),
    );
  }

  Widget infoCard() {
    return Card(
      color: AppColors.primary.withOpacity(0.8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      elevation: 5,
      child: infList(),
    );
  }

  Widget infList() {
    return ListTile(
      leading: circleAroundImg(),
      title: Text(
        "Muhammad Marwan",
        style: AppFonts.style16DmSans,
      ),
      subtitle: Text(
        "@Marwanhoo",
        style: AppFonts.style14DmSans,
      ),
      trailing: const Icon(
        Icons.edit_outlined,
        color: Colors.white,
      ),
    );
  }

  Widget circleAroundImg() {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white,
          width: 2,
        ),
      ),
      child: img(),
    );
  }

  Widget img() {
    return const CircleAvatar(
      backgroundColor: Colors.transparent,
      child: Text(
        "MM",
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}