import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Util {
  static const SizedBox headSpace = SizedBox(height: 54);
  static const SizedBox largeSpace = SizedBox(height: 20);
  static const SizedBox mediumSpace = SizedBox(height: 14);
  static const SizedBox smallSpace = SizedBox(height: 6);

  static const String logoPath = "assets/logos/one.png";
}

const kTextColor = Color(0xFF253274);

class DetailsField extends StatelessWidget {
  final String title;
  final bool isPassword;

  const DetailsField({required this.title, this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(title, style: TextStyle(fontSize: 11)),
      SizedBox(height: 3),
      TextField(
        keyboardType: TextInputType.emailAddress,
        obscureText: isPassword ? true : false,
        decoration: InputDecoration(

            suffixIcon: isPassword ? Icon(Icons.visibility_outlined) : null,
            border: OutlineInputBorder()),
      )
    ]);
  }
}

class SocialLoginButton extends StatelessWidget {
  final String logoAssetPath;
  final String title;

  const SocialLoginButton({required this.logoAssetPath, required this.title});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
          shadowColor: Colors.grey.withOpacity(0.1),
          elevation: 10,
          backgroundColor: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20)),
      child: Row(children: [
        Image.asset(logoAssetPath),
        SizedBox(width: 12),
        Text(title, style: TextStyle(fontSize: 14, color: Color(0xFF253274)))
      ]),
    );
  }
}

class ChangeView extends StatelessWidget {
  final Widget nextScreen;
  final String cta;
  final String promptText;

  const ChangeView({Key? key, required this.nextScreen, required this.cta, required this.promptText}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            children: [
              TextSpan(
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      cta =="Sign Up" ? Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (BuildContext context) =>
                                  nextScreen)) : Navigator.pop(context);
                    },
                  text: cta,
                  style: TextStyle(
                      color: kTextColor, fontWeight: FontWeight.bold))
            ],
            text: promptText,
            style: TextStyle(color: Colors.black)));
  }
}
