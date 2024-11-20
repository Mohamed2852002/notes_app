import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBarButton extends StatelessWidget {
  const CustomAppBarButton({
    super.key,
    required this.icon,
    this.onTap,
  });
  final IconData icon;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).hoverColor,
          borderRadius: BorderRadius.circular(16.r),
        ),
        width: 45.w,
        height: 45.w,
        child: Icon(
          icon,
          size: 26.sp,
        ),
      ),
    );
  }
}
