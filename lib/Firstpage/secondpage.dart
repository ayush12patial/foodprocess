import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';

class secondpage extends StatelessWidget {
  const secondpage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(

      ),
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Get Started with Lobster"),


            Text("Don’t have an account? Signup Now"),


            Container(
              height: 54,
              width: 358,

              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Email or Phone Number',
                ),
              ),
            ),

            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Password',
              ),
            ),

            Text("Forgot Password?"),

            ElevatedButton(
              onPressed: (){},
              child:  Text("Get Started"),
              style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  fixedSize: Size(358, 55),
                  backgroundColor: Color(0xffFE724C)
              ) ,
            ),

            Text("Continue"),

            FlutterSocialButton(
              onTap: () {},
              buttonType: ButtonType.facebook,
              title: "Continue with Facebook",
            ),


            FlutterSocialButton(
              onTap: () {},
              buttonType: ButtonType.google,
              title: "Continue with Google",
            ),


            FlutterSocialButton(
              onTap: () {},
              buttonType: ButtonType.apple,
              title: "Continue with Apple",
            ),









          ],
      ),

      )
    );
  }
}
