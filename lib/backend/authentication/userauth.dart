import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:kisukinen/backend/User/usermodel.dart';

import '../../components/popups/snackbar.dart';

class UserAuth extends GetxController{
  static UserAuth get instance => Get.find();
  
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> saveUserRecord(UserModel user) async{
    try{
      await _db.collection("Users").doc(user.id).set(user.toJson());
    }on FirebaseException catch (e){
      Snackbar.errorSnackbar(
      title: 'Something went wrong',
      message: e.message ?? 'An unknown error occurred.',
    );
    throw 'something went wrong';
    }
  }
}