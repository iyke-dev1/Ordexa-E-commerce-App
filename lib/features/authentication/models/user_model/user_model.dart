import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_app/utils/formatters/formatters.dart';
import 'package:flutter/material.dart';

/// model class representing user data
class UserModel {
  // keep those values final which you do not want to update
  final String id;
  String firstName;
  String lastName;
  final String userName;
  final String email;
  String phoneNumber;
  String profilePicture;


  /// constructor for the user model
  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.userName,
    required this.email,
    required this.phoneNumber,
    required this.profilePicture,
  });

  /// Helper function that gets full name
  String get fullName => '$firstName $lastName';


  /// Helper function to format phone Number
  String get formattedphoneno => MyFormatter.formatPhoneNumber(phoneNumber);


  /// static function to split fullname into first and last name
  static List<String> nameParts(fullName) => fullName.split(' ');

  /// static function to generate a userName from full name
  static String generateUserName(fullName) {
    List<String> nameParts = fullName.split(' ');
    String firstName = nameParts[0].toLowerCase();
    String lastName = nameParts.length > 1 ? nameParts[1].toLowerCase() : '';

    String camelCaseUsername = '$firstName$lastName';
    String usernameWithPrefix = 'cwt_$camelCaseUsername';
    return usernameWithPrefix;
}
    /// static function to create a user model from a map
    static UserModel empty() =>
        UserModel(
          id: '',
          firstName: '',
          lastName: '',
          userName: '',
          email: '',
          phoneNumber: '',
          profilePicture: '',
        );


    /// convert model to JSON structure for storing data in firestore
    Map<String, dynamic> toJson() =>
        {
          'id': id,
          'firstName': firstName,
          'lastName': lastName,
          'userName': userName,
          'email': email,
          'phoneNumber': phoneNumber,
          'profilePicture': profilePicture,
        };


    /// factory method to create a usermodel from a firebase document snapshot
    factory UserModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> document) {
      if (document.data() != null) {
        final data = document.data()!;
        return UserModel(
          id: document.id,
          firstName: data['firstName'] ?? '',
          lastName: data['lastName'] ?? '',
          userName: data['userName'] ?? '',
          email: data['email'] ?? '',
          phoneNumber: data['phoneNumber'] ?? '',
          profilePicture: data['profilePicture'] ?? '',
        );
      } return UserModel.empty();
    }
  }

