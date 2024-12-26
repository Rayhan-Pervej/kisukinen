import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kisukinen/components/input_widgets/input_field.dart';
import 'package:kisukinen/components/input_widgets/password_field.dart';
import 'package:kisukinen/screens/pages/navbar.dart';
import 'package:kisukinen/services/utils/validators.dart';
import 'package:kisukinen/theme/color.dart';
import 'package:kisukinen/theme/text.dart';

class EmailLogin extends StatefulWidget {
  const EmailLogin({super.key});

  @override
  State<EmailLogin> createState() => _EmailLoginState();
}

class _EmailLoginState extends State<EmailLogin> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: MyColor.white,
        appBar: AppBar(
          backgroundColor: MyColor.white,
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(
              FontAwesomeIcons.arrowLeft,
              color: MyColor.black,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/email.png',
                height: 40,
                width: 40,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Enter Email and Password",
                style: TextDesign().fieldLabel.copyWith(fontSize: 23),
              ),
              const SizedBox(
                height: 10,
              ),
              _form(),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          (context),
                          MaterialPageRoute(
                              builder: (context) => const Navbar()),
                          (route) => false);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: MyColor.yellow,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    child: Text(
                      "Contiune",
                      style: TextDesign()
                          .buttonText
                          .copyWith(color: MyColor.black),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _form() {
    final fromKey = GlobalKey<FormState>();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return Form(
        key: fromKey,
        child: Column(
          children: [
            InputField(
              controller: emailController,
              fieldLabel: "Email",
              backgroundColor: Colors.transparent,
              hintText: "Enter Your Email",
              validation: true,
              errorMessage: "",
              validatorClass: ValidatorClass().validateEmail,
            ),
            const SizedBox(
              height: 10,
            ),
            PasswordField(
              password: passwordController,
              fieldLabel: "Password",
              hintText: "Enter Your Password",
              backgroundColor: Colors.transparent,
            )
          ],
        ));
  }
}
