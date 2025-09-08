import 'package:get/get.dart';
import '../../../features/authentication/models/user_model/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

/// Repository class for user related operations
class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  /// function to save user-data to firestore
  Future<void> saveUserRecord(UserModel user) async {
    try {
      await _db.collection('users').doc(user.id).set(user.toJson());
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }
}


