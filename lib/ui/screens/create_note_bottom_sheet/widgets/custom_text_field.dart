import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.contentPadding,
  });
  final String hintText;
  final TextEditingController controller;
  final double? contentPadding;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: null,
      keyboardType: TextInputType.multiline,
      controller: controller,
      decoration: InputDecoration(
        contentPadding: REdgeInsets.only(bottom: contentPadding ?? 0),
        hintText: hintText,
        border: const UnderlineInputBorder(borderSide: BorderSide.none),
      ),
    );
  }
}
