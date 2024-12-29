import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../components/popups/snackbar.dart';

class Authentication extends GetxController {
  static Authentication get instance => Get.find();

  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;
  var isLoggedIn = false.obs;

  //is logged in ?
  @override
  void onInit() {
    super.onInit();
    checkLoginStatus();
  }

  void checkLoginStatus() {
    // Check if user token or any indicator of login exists
    String? token = deviceStorage.read('userToken');
    isLoggedIn.value = token != null;
  }

  void login(String token) {
    deviceStorage.write('userToken', token);
    isLoggedIn.value = true;
  }

  void logout() {
    deviceStorage.remove('userToken');
    isLoggedIn.value = false;
  }

  //register

  Future<UserCredential?> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      final userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      String? token = await userCredential.user?.getIdToken();
      if (token != null) {
        login(token);
      }
      return userCredential;
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
