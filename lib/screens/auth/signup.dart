import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kisukinen/backend/authentication/authsignup.dart';
import 'package:kisukinen/components/input_widgets/input_field.dart';
import 'package:kisukinen/components/input_widgets/password_field.dart';
import 'package:kisukinen/services/utils/validators.dart';
import 'package:kisukinen/theme/color.dart';
import 'package:kisukinen/theme/text.dart';
import '../../components/popups/snackbar.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});
  

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final controller = Get.put(AuthSignup());
  

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
              Icons.arrow_back,
              color: MyColor.black,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Create an Account",
                  style: TextDesign().fieldLabel.copyWith(fontSize: 23),
                ),
                const SizedBox(height: 10),
                _form(),
                const SizedBox(height: 40),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      controller.signup(); // Proceed with signup
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: MyColor.yellow,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: Text(
                      "Sign Up",
                      style: TextDesign().buttonText.copyWith(
                            color: MyColor.black,
                          ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextDesign().bodyText.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                    InkWell(
                      onTap: () => Navigator.of(context).pop(),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Text(
                          "Login",
                          style: TextDesign().buttonText.copyWith(
                                fontSize: 14,
                                color: MyColor.softBlue,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _form() {
    return Form(
      key: controller.signupFormKey,
      child: Column(
        children: [
          InputField(
            controller: controller.firstNameController,
            fieldLabel: "First Name",
            backgroundColor: Colors.transparent,
            hintText: "Enter Your First Name",
            validation: true,
            errorMessage: "First name is required",
            validatorClass: ValidatorClass().validateUserName,
          ),
          const SizedBox(height: 10),
          InputField(
            controller: controller.lastNameController,
            fieldLabel: "Last Name",
            backgroundColor: Colors.transparent,
            hintText: "Enter Your Last Name",
            validation: true,
            errorMessage: "Last name is required",
            validatorClass: ValidatorClass().validateUserName,
          ),
          const SizedBox(height: 10),
          InputField(
            controller: controller.emailController,
            fieldLabel: "Email",
            backgroundColor: Colors.transparent,
            hintText: "Enter Your Email",
            validation: true,
            errorMessage: "Email is required",
            validatorClass: ValidatorClass().validateEmail,
          ),
          const SizedBox(height: 10),
          PasswordField(
            password: controller.passwordController,
            fieldLabel: "Password",
            hintText: "Enter Your Password",
            backgroundColor: Colors.transparent,
          ),
          const SizedBox(height: 10),
          PasswordField(
            password: controller.confirmPasswordController,
            fieldLabel: "Confirm Password",
            hintText: "Confirm Your Password",
            backgroundColor: Colors.transparent,
          ),
        ],
      ),
    );
  }
}
