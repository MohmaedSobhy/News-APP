import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class CustomeTitleAppBarView extends StatelessWidget {
  final String title;
  const CustomeTitleAppBarView({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.abrilFatface().copyWith(
        fontSize: 18.sp,
        color: Colors.black,
      ),
    );
  }
}
