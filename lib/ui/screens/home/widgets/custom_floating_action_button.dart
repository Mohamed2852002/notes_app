
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const CircleBorder(),
      backgroundColor: const Color(0xff57ebd9),
      onPressed: () {},
      child: Icon(
        Icons.add,
        color: Colors.black,
        size: 32.sp,
      ),
    );
  }
}