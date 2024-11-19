import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onBtnPress,
    required this.isLoading,
  });
  final Function onBtnPress;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onBtnPress();
      },
      child: isLoading
          ? const RSizedBox(
              width: 25,
              height: 25,
              child: CircularProgressIndicator(),
            )
          : const Text(
              'Add',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
    );
  }
}