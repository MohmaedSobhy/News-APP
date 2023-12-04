import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomeTitleAppBarView extends StatelessWidget {
  const CustomeTitleAppBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "BreakingNews",
      style: TextStyle(
        color: Colors.black,
        fontSize: 15.sp,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
