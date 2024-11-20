import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ColorContainerWidget extends StatelessWidget {
  const ColorContainerWidget(
      {super.key,
      this.onTap,
      required this.currentIndex,
      required this.listIndex,
      required this.color});
  final void Function()? onTap;
  final int currentIndex;
  final int listIndex;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: REdgeInsets.symmetric(
          horizontal: 6,
        ),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
          border: currentIndex == listIndex
              ? Border.all(
                  color: Colors.white,
                  width: 2.5.w,
                )
              : Border.all(),
        ),
        height: 40.r,
        width: 40.r,
      ),
    );
  }
}
