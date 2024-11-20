import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const kNotesBox = 'notes_box';

showCustomSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      duration: const Duration(seconds: 2),
      backgroundColor: Colors.white,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.r),
      ),
      content: Text(
        message,
      ),
    ),
  );
}

List<Color> kColorsList = [
    const Color(0xffAc3931),
    const Color(0xffE5D352),
    Colors.blue,
    const Color(0xffFFCC80),
    const Color(0xff537D8D),
    Colors.green,
    const Color(0xff482C3D),
  ];
