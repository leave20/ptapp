import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ptappmobile/controller/dashboard_controller.dart';
import 'package:ptappmobile/view/login/singup_view.dart';
import 'package:ptappmobile/view/pages/dashboard/navigation_view.dart';

class LoginPage extends StatelessWidget {

  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    final ButtonStyle outlineButtonStyle = OutlinedButton.styleFrom(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
      shape:  RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
    ).copyWith(
      side: MaterialStateProperty.resolveWith<BorderSide>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.pressed))
            return BorderSide(
              color: Theme
                  .of(context)
                  .colorScheme
                  .onPrimary,
            );
          return BorderSide(
              color: Colors.white,
              style: BorderStyle.solid); // Defer to the widget's default.
        },
      ),
    );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.dark,
        backgroundColor: Colors.black87,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        color: Colors.black87,
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      "Map your routes! \nWe will accompany you!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          height: 1.5,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.amber),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: <Widget>[
                      inputFile(label: "Email"),
                      inputFile(
                        label: "Password",
                        obscureText: true,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    child: MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      color: Colors.transparent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.amber),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.amber,
                        ),
                      ),
                      onPressed: () {
                        Get.offAndToNamed('/dashboard');
                      }
                    ),
                  ),
                ),
                Container(
                  width: 300,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        OutlinedButton(
                          style: outlineButtonStyle,
                          onPressed: () {},
                          child: Image(
                            image: AssetImage('assets/Icons/facebook.png'),
                            color: Colors.white,
                          ),
                        ),
                        OutlinedButton(
                          style: outlineButtonStyle,
                          onPressed: () {},
                          child: Image(
                            image: AssetImage('assets/Icons/gmail.png'),
                            color: Colors.white,
                          ),
                        ),
                        OutlinedButton(
                          style: outlineButtonStyle,
                          onPressed: () {},
                          child: Image(
                            image: AssetImage('assets/Icons/twitter.png'),
                            color: Colors.white,
                          ),
                        ),
                      ]),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Don't have an account?",
                          style: TextStyle(color: Colors.white),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignupPage()),
                            );
                          },
                          child: Text(
                            " Register",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Colors.amber),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Forgot your password?",
                          style: TextStyle(color: Colors.white),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => SignupPage()),
                            // );
                            Get.offAll(()=>DashboardPage());
                          },
                          child: Text(
                            " Recover",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Colors.amber,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}

// we will be creating a widget for text field
Widget inputFile({label, obscureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      SizedBox(
        height: 20,
      ),
      Text(
        label,
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white),
      ),
      SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.amber),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade400))),
      ),
      SizedBox(
        height: 5,
      )
    ],
  );
}
