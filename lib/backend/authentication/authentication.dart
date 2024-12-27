import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../components/popups/snackbar.dart';

class Authentication extends GetxController {
  static Authentication get instance => Get.find();

  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  screenRedirect() async {
    deviceStorage.writeIfNull("isLogin", true);
  }

  //register

 Future<UserCredential?> registerWithEmailAndPassword(
    String email, String password) async {
  try {
    return await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  } on FirebaseAuthException catch (e) {
    Snackbar.errorSnackbar(
      title: 'Something went wrong',
      message: e.message ?? 'An unknown error occurred.',
    );
    return null; // Return null to indicate failure
  } catch (e) {
    Snackbar.errorSnackbar(
      title: 'Unexpected Error',
      message: 'An unexpected error occurred. Please try again.',
    );
    return null; // Return null for generic errors as well
  }
}

}
