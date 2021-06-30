import 'package:flutter/material.dart';
import 'package:login_templates/screens/one/shared.dart';
import 'package:login_templates/screens/one/signup.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 36),
            child: Column(children: [
              Util.headSpace,
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Image.asset(Util.logoPath),
                Text("Log In to Brand",
                    style: TextStyle(
                        fontSize: 32,
                        color: kTextColor,
                        fontWeight: FontWeight.bold))
              ]),
              Util.largeSpace,
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                SocialLoginButton(
                    logoAssetPath: "assets/logos/fb_logo.png",
                    title: "Facebook"),
                SocialLoginButton(
                    logoAssetPath: "assets/logos/google_logo.png",
                    title: "Google")
              ]),
              Util.largeSpace,
              IntrinsicWidth(
                child: Row(
                  children: [
                    Divider(color: Colors.black),
                    Text("Or Log In Using Email"),
                    Divider(color: Colors.black // thickness: 5,
                        ),
                  ],
                ),
              ),
              Util.largeSpace,
              DetailsField(title: "EMAIL"),
              Util.smallSpace,
              DetailsField(isPassword: true, title: "PASSWORD"),
              Util.smallSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forgot Password",
                    style: TextStyle(fontSize: 13),
                  )
                ],
              ),
              Util.smallSpace,
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Log In",
                  style: TextStyle(fontSize: 17),
                ),
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 60),
                    primary: Color(0xFF7189FF)),
              ),
              Util.mediumSpace,
              ChangeView(nextScreen: SignUp(), cta: "Sign Up", promptText: "New to Brand? "),

              Util.mediumSpace,
            ]),
          ),
          Hero(
            
            tag: "bg",
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset("assets/backgrounds/one.png"),
            ),
          )
        ],
      ),
    );
  }
}
