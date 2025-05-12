import 'package:intl/intl.dart';

class MyFormatter{
  static String formatDate(DateTime? date){
    date??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date); // Customize the date format as needed
  }

  static String formatCurrency(double amount){
    return NumberFormat.currency(locale:  'en_US', symbol: '\$').format(amount); // Customize currency locale as needed
  }

  static String formatPhoneNumber(String phoneNumber){
    // assuming a 10-digit phone number  format: (123) 456-7890
    if (phoneNumber.length == 10) {
      return '(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(
          3, 6)} ${phoneNumber.substring(6)}';
    } else if (phoneNumber.length == 11){
      return '(${phoneNumber.substring(0, 4)}) ${phoneNumber.substring(4, 7)} ${phoneNumber.substring(7)}';
    }
    // add more custom phone Number formatting logic for different formats if needed.
    return phoneNumber;
    }

    // Not fully tested
   static String internationalFormatPhoneNumber(String phoneNumber){
    // Remove any Non-Digit Characters from the phone number
     var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

     // Extract the country code from the digitsOnly
     String countryCode = '+${digitsOnly.substring(0, 2)}';
     digitsOnly = digitsOnly.substring(2);

     // Adds the remaining digit with proper formatting
     final formattedNumber = StringBuffer();
     formattedNumber.write('($countryCode)');

     int i = 0;
     while (i < digitsOnly.length){
       int groupLength = 2;
       if (i == 0 && countryCode == '+1'){
         groupLength = 3;
       }

       int end = 1 + groupLength;
       formattedNumber.write(digitsOnly.substring(i, end));

       if (end < digitsOnly.length){
         formattedNumber.write(" ");

       }
       i = end;
     }
     return digitsOnly;
   }
  }
