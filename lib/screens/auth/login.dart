import 'package:flutter/material.dart';
import 'package:kisukinen/screens/auth/email_login.dart';
import 'package:kisukinen/screens/auth/signup.dart';
import 'package:kisukinen/theme/color.dart';
import 'package:kisukinen/theme/text.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.softBlue,
      body: Stack(
        children: [
          Positioned(
            top: 100,
            left: 30,
            child: SizedBox(
              height: 300,
              width: 300,
              child: Image.asset("assets/mascot.png"),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: MyColor.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15))),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: _logintButton(),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _logintButton() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Sign up or log in",
          style: TextDesign().navText.copyWith(fontSize: 20),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "Select your preferred method to continue",
          style: TextDesign()
              .bodyText
              .copyWith(fontWeight: FontWeight.w400, fontSize: 12),
        ),
        const SizedBox(
          height: 7,
        ),
        _google(),
        _facebook(),
        _email(),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Don't have an account?",
              style: TextDesign().bodyText.copyWith(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUp()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Text(
                  'Sign Up!',
                  style: TextDesign().buttonText.copyWith(
                      fontSize: 12,
                      color: MyColor.softBlue,
                      fontWeight: FontWeight.w600),
                ),
              ),
            )
          ],
        )
      ],
    );
  }

  Widget _google() {
    return OutlinedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          backgroundColor: MyColor.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          padding: const EdgeInsets.symmetric(vertical: 10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/google.png',
              height: 20,
              width: 20,
            ),
            Text(
              "Continue with Google",
              style:
                  TextDesign().bodyText.copyWith(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }

  Widget _facebook() {
    return OutlinedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          backgroundColor: MyColor.softBlue,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          padding: const EdgeInsets.symmetric(vertical: 10),
          side: const BorderSide(color: MyColor.softBlue)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/facebook.png',
              height: 20,
              width: 20,
            ),
            Text(
              "Continue with Facebook",
              style: TextDesign()
                  .bodyText
                  .copyWith(fontWeight: FontWeight.bold, color: MyColor.white),
            )
          ],
        ),
      ),
    );
  }

  Widget _email() {
    return OutlinedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const EmailLogin()),
        );
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: MyColor.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          padding: const EdgeInsets.symmetric(vertical: 10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/email.png',
              height: 20,
              width: 20,
            ),
            Text(
              "Continue with email",
              style:
                  TextDesign().bodyText.copyWith(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
