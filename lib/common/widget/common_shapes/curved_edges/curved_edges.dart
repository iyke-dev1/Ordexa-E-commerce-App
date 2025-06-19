// import 'package:flutter/material.dart';
//
// class MyCustomCurvedEdges extends CustomClipper<Path>{
//   @override
//   getClip(Size size) {
//     var path = Path();
//     path.lineTo(0, size.height);
//
//
//     final firstCurve = Offset(0, size.height - 20);
//     final lastCurve = Offset(30, size.height - 20);
//     path.quadraticBezierTo(firstCurve.dx, firstCurve.dy, lastCurve.dx, lastCurve.dy);
//
//
//     final secondCurve = Offset(0, size.height - 20);
//     final secondLastCurve = Offset(size.height - 30, size.height - 20);
//     path.quadraticBezierTo(secondCurve.dx, secondCurve.dy, secondLastCurve.dx, secondLastCurve.dy);
//
//     final thirdFirstCurve = Offset(size.width, size.height - 20);
//     final thirdLastCurve = Offset(size.width , size.height );
//     path.quadraticBezierTo(thirdFirstCurve.dx, thirdFirstCurve.dy, thirdLastCurve.dx, thirdLastCurve.dy);
//
//
//     path.lineTo(size.width, 0);
//     path.close();
//     return path;
//   }
//
//   @override
//   bool shouldReclip(covariant CustomClipper<dynamic> oldClipper) {
//     return true;
//   }
//
// }


import 'package:flutter/material.dart';

class MyCustomCurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // 1. Create a new Path object
    var path = Path();
    path.lineTo(0, size.height - 20); // 2. Start from top-left, go down to just before the curve

    // 3. Define the first curve (bottom-left)
    final firstControlPoint = Offset(0, size.height);
    final firstEndPoint = Offset(30, size.height);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);

    // 4. Draw the straight line connecting the two curves
    path.lineTo(size.width - 30, size.height);

    // 5. Define the second curve (bottom-right)
    final secondControlPoint = Offset(size.width, size.height);
    final secondEndPoint = Offset(size.width, size.height - 20);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy, secondEndPoint.dx, secondEndPoint.dy);

    // 6. Draw the final straight line up the right side
    path.lineTo(size.width, 0);

    // 7. Close the path to complete the shape
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // Set to false if the clipper's path never changes for better performance
    return false;
  }
}