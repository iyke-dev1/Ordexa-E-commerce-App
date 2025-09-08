class MyValidator{
  /// Empty Text Validation
  static String? validateEmptyText(String? fieldName, String? value){
    if (value == null || value.isEmpty){

      return '$fieldName is required';
    }
    return null;
  }


  // Regular expression for email validation
  static String? validateEmail(String value){
     if (value.isEmpty){
       return 'email is required';
     }

     // Regular expression for email validation
     final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]+[\w-]{2,4}$');

     if (!emailRegExp.hasMatch(value)){
       return 'invalid email address.';
     }
     return null;
   }

   static String? validatePassword(String value){
     if (value.isEmpty){
       return 'Password Not required';
     }

     // Check for minimum password length
     if (value.length < 6){
       return 'Password Must be at least 6 character long.';
     }

     // Check for uppercase letters
     if (!value.contains(RegExp(r'[A-Z]'))){
       return 'Password must contain at least one uppercase letter.';
     }



     // Check for numbers
     if (!value.contains(RegExp(r'[0-9]'))){
       return 'Password must contain at least one number.';
     }


     // Check for Special characters
     if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))){
       return 'Password must contain at least one Special character.';
     }
     return null;
   }


     static String? validatePhoneNumber(String? value){
       if (value == null || value.isEmpty){
         return 'PhoneNumber is required';
       }

       // Regular Expressions for phone number validation ( Assuming a 10 digit US number format )
       final phoneNumberExp = RegExp(r'^\d{10}$');

       if (!phoneNumberExp.hasMatch(value)){
         return 'Invalid phone Number Format ( 10 digit required ).';
       }
       return null;
   }

   // Add more Custom validators as Needed for your specific Requirement

}