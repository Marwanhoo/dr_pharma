import 'package:flutter_drpharma_2/core/app_export.dart';

class HeadProfileInfo extends StatelessWidget {
  const HeadProfileInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190.0,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              Align(
                alignment: AlignmentDirectional.topCenter,
                child: Container(
                  height: 140.0,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                        4.0,
                      ),
                      topRight: Radius.circular(
                        4.0,
                      ),
                    ),
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT48wKo_hYrLLSCq4nLp4svJKIEBU2AHOKBfaM6P-skAavOaKMOduj7CnhPJyUe3I-PgWQ",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.transparent,
                child: IconButton(
                  onPressed: () {},
                  color: Colors.white,
                  icon: const Icon(
                    Icons.camera_alt,
                  ),
                ),
              ),
            ],
          ),
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              InkWell(
                borderRadius: BorderRadius.circular(50),
                onTap: (){
                  showDialog(context: context, builder: (_)=>  AlertDialog(
                    backgroundColor: Colors.transparent,
                    content: const CircleAvatar(
                      radius: 100,
                      backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/125823028?v=4"),
                    ),
                    actions: [
                      TextButton(onPressed: (){Navigator.of(context).pop();}, child: const Text("Close",style: TextStyle(color: Colors.white),)),
                    ],
                  ));
                },
                child: CircleAvatar(
                  radius: 55,
                  backgroundColor:
                  Theme.of(context).scaffoldBackgroundColor,
                  child: const CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                      'https://avatars.githubusercontent.com/u/125823028?v=4',
                    ),
                  ),
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                child: IconButton(
                  onPressed: () {
                    showAttachFilePhoto(context);
                  },
                  icon: const Icon(
                    Icons.camera_alt,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

void showAttachFilePhoto(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: MediaQuery.of(context).size.height * 0.40,
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
              "Attach a Photo",
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Please upload your Photo",
              style: TextStyle(
                fontWeight: FontWeight.w400,
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
                oneItemAttachFilePhoto(Icons.photo_library, "From Gallery"),
                oneItemAttachFilePhoto(Icons.camera, "From Camera", true),
              ],
            ),
          ],
        ),
      );
    },
  );
}

Widget oneItemAttachFilePhoto(IconData icon, String name, [bool shape = false]) {
  return Card(
    shape: (shape)
        ? RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
      side: const BorderSide(
        width: 1,
        color: Color(0xFF566CA2),
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
        Text(
          name,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    ),
  );
}
