import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ptappmobile/model/user.dart';
import 'package:ptappmobile/utils/user_preferences.dart';

class ProfileWidget extends StatelessWidget {


  final String imagePath;
  final VoidCallback onClicked;
  final bool isEditable;

  const ProfileWidget(
      {Key? key,
      required this.imagePath,
      required this.onClicked,
      this.isEditable = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    final color = Theme.of(context).colorScheme.primary;

    return Center(
      child: Stack(
        children: [
          buildImage(),
          Positioned(
            bottom: 0,
            right: 4,
            child: buildEditIcon(color),
          ),
        ],
      ),
    );
  }

  Widget buildImage() {

    final image = NetworkImage(imagePath);
    return ClipOval(
        child: Material(
      color: Colors.transparent,
      child: Ink.image(
        image: image,
        fit: BoxFit.cover,
        width: 120,
        height: 120,
        child: InkWell(
          onTap: onClicked,
        ),
      ),
    ));
  }

  Widget buildEditIcon(Color color) => buildCircle(
        child: buildCircle(
          color: color,
          all: 8,
          child: GestureDetector(
            onTap: () {
              User user= UserPreferences.myUser;
              Get.defaultDialog(
                title: 'Editing',
                middleText: 'Please editing our dates',
                titleStyle: TextStyle(color: Colors.white),
                backgroundColor: Colors.grey,
                radius: 5.0,
                actions: [
                  ProfileWidget(
                      imagePath: imagePath,
                      isEditable: true,
                      onClicked: onClicked),

                  // TextFieldWidget(
                  //   label:'Full name',
                  //   text:user.name,
                  //   valueChanged: (name){
                  //
                  //   },
                  // ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('button'),
                  )
                ],
              );
            },
            child: Icon(
              isEditable? Icons.add_a_photo : Icons.edit,
              size: 20,
            ),
          ),
        ),
        all: 3,
        color: Colors.grey.shade900,
      );

  Widget buildCircle(
          {required Color color, required double all, required Widget child}) =>
      ClipOval(
        child: Container(
          child: child,
          color: color,
          padding: EdgeInsets.all(all),
        ),
      );
}


