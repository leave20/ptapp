import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:ptappmobile/view/login/login_view.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/machupicchu.jpg'),
                fit: BoxFit.cover),
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.white.withOpacity(0.1),
                  Colors.grey.shade900.withOpacity(0.5),
                  Colors.black.withOpacity(0.5),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: SingleChildScrollView(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.5,
                  ),
                  Text(
                    "Let's make",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width * 0.1,
                    ),
                  ),
                  Text(
                    "your dream \nvacation",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width * 0.1,
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Badge(
                    animationType: BadgeAnimationType.scale,
                    shape: BadgeShape.square,
                    borderRadius: BorderRadius.circular(5),
                    badgeContent: Text("New",style: TextStyle(
                      color: Colors.black87
                    ),),
                    badgeColor: Colors.amber,

                    child: MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () {

                      },
                      color: Colors.transparent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.amber),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        "Explorer",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    color: Colors.transparent,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.amber),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      "Get started",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
