import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class NoteItemWidget extends StatelessWidget {
  const NoteItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.only(
        left: 24,
        right: 10,
        top: 16,
      ),
      decoration: BoxDecoration(
        color: const Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            contentPadding: REdgeInsets.all(0),
            title: Text(
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              'here\'s the title asd asd fasfas asd',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24.sp,
              ),
            ),
            subtitle: Padding(
              padding: REdgeInsets.only(top: 16, right: 32),
              child: Text(
                'here\'s the subtitle asd safasd sda as das asdsa as faw asas fawr',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 16.sp,
                ),
              ),
            ),
            iconColor: Colors.black,
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.delete,
                size: 30.sp,
              ),
            ),
          ),
          Padding(
            padding: REdgeInsets.only(
              right: 10,
              bottom: 26,
            ),
            child: Text(
              DateFormat.yMd().format(DateTime.now()),
              style: TextStyle(
                color: Colors.black,
                fontSize: 11.sp,
              ),
            ),
          )
        ],
      ),
    );
  }
}
