import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSearchButton extends StatelessWidget {
  const CustomSearchButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).hoverColor,
          borderRadius: BorderRadius.circular(16.r),
        ),
        width: 45.w,
        height: 45.w,
        child: Icon(
          Icons.search,
          size: 26.sp,
        ),
      ),
    );
  }
}
