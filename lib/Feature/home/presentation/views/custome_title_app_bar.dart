import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class CustomeTitleAppBarView extends StatelessWidget {
  const CustomeTitleAppBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "BreakingNews",
      style: GoogleFonts.abrilFatface().copyWith(
        fontSize: 18.sp,
        color: Colors.black,
      ),
    );
  }
}
