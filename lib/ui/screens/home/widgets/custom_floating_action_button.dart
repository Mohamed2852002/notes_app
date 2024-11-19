import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
    required this.onBtnPress,
    required this.icon,
  });
  final Function onBtnPress;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        onBtnPress();
      },
      child: Icon(
        icon,
        color: Colors.black,
        size: 32.sp,
      ),
    );
  }
}
